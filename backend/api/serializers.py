from django.contrib.auth import get_user_model
from rest_framework import serializers

from .models import (Ingredient, Favorite, Recipe, IngredientRecipe,
                     ShoppingList, Tag)
from .fields import Base64ImageField
from users.models import Subscription
from users.serializers import UserSerializer

User = get_user_model()


class TagSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Tag."""
    class Meta:
        model = Tag
        fields = ['id', 'name', 'color', 'slug']


class IngredientSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Ingredient."""
    class Meta:
        model = Ingredient
        fields = ['id', 'name', 'measurement_unit']


class IngredientRecipeSerializer(serializers.ModelSerializer):
    """Сериализатор для модели RecipeIngredient."""
    id = serializers.PrimaryKeyRelatedField(
        queryset=Ingredient.objects.all(),
        source='ingredient.id'
    )
    name = serializers.CharField(
        source='ingredient.name',
        read_only=True
    )
    measurement_unit = serializers.CharField(
        source='ingredient.measurement_unit',
        read_only=True
    )

    class Meta:
        model = IngredientRecipe
        fields = ['id', 'name', 'measurement_unit', 'amount']


class RecipeListSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Recipe запрос GET."""
    tags = TagSerializer(many=True)
    author = UserSerializer()
    ingredients = IngredientRecipeSerializer(source='ingredientrecipe_set',
                                             many=True, read_only=True)
    is_favorited = serializers.SerializerMethodField()
    is_in_shopping_cart = serializers.SerializerMethodField()

    class Meta:
        model = Recipe
        fields = ['id', 'author', 'name', 'image', 'text', 'ingredients',
                  'tags', 'cooking_time', 'is_favorited',
                  'is_in_shopping_cart']
        read_only_fields = ['author', 'tags']

    def get_is_favorited(self, obj):
        user = self.context.get('request').user
        if not user.is_authenticated:
            return False
        return Favorite.objects.filter(recipe=obj, user=user).exists()

    def get_is_in_shopping_cart(self, obj):
        user = self.context.get('request').user
        if not user.is_authenticated:
            return False
        return ShoppingList.objects.filter(recipe=obj, user=user).exists()


class RecipeSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Recipe запрос CRUD."""
    author = UserSerializer(default=serializers.CurrentUserDefault())
    tags = serializers.PrimaryKeyRelatedField(
        queryset=Tag.objects.all(),
        many=True)
    ingredients = IngredientRecipeSerializer(many=True)
    image = Base64ImageField(required=False, allow_null=True)

    class Meta:
        model = Recipe
        fields = ['id', 'author', 'name', 'image', 'text', 'ingredients',
                  'tags', 'cooking_time']
        read_only_fields = ['author']

    @staticmethod
    def add_ingredient(ingredients, recipe):
        ingredient_list = []
        for ingredient in ingredients:
            current_ingredient = ingredient['ingredient']
            current_amount = ingredient.get('amount')
            ingredient_list.append(IngredientRecipe(
                recipe=recipe,
                ingredient=current_ingredient['id'],
                amount=current_amount))
        IngredientRecipe.objects.bulk_create(ingredient_list)

    def create(self, validated_data):
        ingredients = validated_data.pop('ingredients')
        tags = validated_data.pop('tags')
        recipe = Recipe.objects.create(**validated_data)
        recipe.tags.set(tags)
        self.add_ingredient(ingredients, recipe)
        return recipe

    def update(self, instance, validated_data):
        if 'ingredients' in validated_data:
            ingredients = validated_data.pop('ingredients')
            instance.ingredients.clear()
        if 'tags' in validated_data:
            tags = validated_data.pop('tags')
            instance.tags.clear()
            instance.tags.set(tags)
        recipe = instance
        self.add_ingredient(ingredients, recipe)
        return super().update(instance, validated_data)

    def to_representation(self, instance):
        serializer = RecipeListSerializer(
            instance,
            context={'request': self.context.get('request')}
        )
        return serializer.data

    def validate_ingredients(self, value):
        if Ingredient.objects.filter(name=value).exists():
            raise serializers.ValidationError(
                '!!!Ингредиент уже есть!!!')
        return value


class RecipeSubscriptionSerializer(serializers.ModelSerializer):
    image = Base64ImageField()

    class Meta:
        model = Recipe
        fields = ['id', 'name', 'image', 'cooking_time']


class SubscriptionSerializer(serializers.ModelSerializer):
    """Сериализатор для модели класса Subscription."""
    email = serializers.ReadOnlyField(source='author.email')
    id = serializers.ReadOnlyField(source='author.id')
    username = serializers.ReadOnlyField(source='author.username')
    first_name = serializers.ReadOnlyField(source='author.first_name')
    last_name = serializers.ReadOnlyField(source='author.last_name')
    is_subscribed = serializers.SerializerMethodField()
    recipes = serializers.SerializerMethodField()
    recipes_count = serializers.ReadOnlyField(source='author.recipes.count')

    class Meta:
        model = Subscription
        fields = ['email', 'id', 'username', 'first_name', 'last_name',
                  'is_subscribed', 'recipes', 'recipes_count']

    def get_is_subscribed(self, obj):
        return Subscription.objects.filter(
            user=obj.user, author=obj.author
        ).exists()

    # def get_recipes(self, obj):
    #     request = self.context.get('request')
    #     page_size = request.GET.get('recipes_limit')
    #     queryset = Recipe.objects.filter(author=obj.author)
    #     if page_size:
    #         return queryset[:int(page_size)]
    #     return RecipeSubscriptionSerializer(
    #         queryset, context={'request': request}, many=True).data

    def get_recipes(self, obj):
        request = self.context.get('request')
        page_size = request.GET.get('recipes_limit')
        queryset = Recipe.objects.filter(author=obj.author)
        if page_size:
            queryset = queryset[:int(page_size)]
        return RecipeSubscriptionSerializer(queryset, many=True,
                                            read_only=True).data


class FavoriteSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Favorite."""
    user = UserSerializer(default=serializers.CurrentUserDefault())
    recipe = serializers.PrimaryKeyRelatedField(
        queryset=Recipe.objects.all(), write_only=True)

    class Meta:
        model = Favorite
        fields = ['user', 'recipe']
        validators = [serializers.UniqueTogetherValidator(
            queryset=Favorite.objects.all(),
            fields=['user', 'recipe'])]

    def create(self, validated_data):
        return Favorite.objects.create(
            user=self.context.get('request').user, **validated_data)


class ShoppingListSerializer(serializers.ModelSerializer):
    """Сериализатор для модели ShoppingList."""
    user = UserSerializer(default=serializers.CurrentUserDefault())
    recipe = serializers.PrimaryKeyRelatedField(
        queryset=Recipe.objects.all(), write_only=True)

    class Meta:
        model = ShoppingList
        fields = ['user', 'recipe']
        validators = [serializers.UniqueTogetherValidator(
            queryset=ShoppingList.objects.all(),
            fields=['user', 'recipe'])]

    def create(self, validated_data):
        return ShoppingList.objects.create(
            user=self.context.get('request').user, **validated_data)
