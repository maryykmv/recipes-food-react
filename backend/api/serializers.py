from django.contrib.auth import get_user_model
from rest_framework import serializers

from .models import (Ingredient, Favorite, Recipe, RecipeIngredient,
                     ShoppingList, Tag)

User = get_user_model()


class TagSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Tag."""
    class Meta:
        model = Tag
        fields = ('id', 'name', 'color', 'slug')


class IngredientSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Ingredient."""
    class Meta:
        model = Ingredient
        fields = ('id', 'name', 'measurement_unit')


class RecipeSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Recipe."""
    class Meta:
        model = Recipe
        fields = ('__all__')


class RecipeIngredientSerializer(serializers.ModelSerializer):
    """Сериализатор для модели RecipeIngredient."""
    class Meta:
        model = RecipeIngredient
        fields = ('__all__')


class FavoriteSerializer(serializers.ModelSerializer):
    """Сериализатор для модели Favorite."""
    class Meta:
        model = Favorite
        fields = ('__all__')


class ShoppingListSerializer(serializers.ModelSerializer):
    """Сериализатор для модели ShoppingList."""
    class Meta:
        model = ShoppingList
        fields = ('__all__')
