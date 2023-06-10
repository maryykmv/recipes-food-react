from django.shortcuts import get_object_or_404
from rest_framework import status, viewsets
from rest_framework.decorators import action
from rest_framework.permissions import AllowAny
from rest_framework.response import Response

from .models import Ingredient, Favorite, Recipe, ShoppingList, Tag
from .pagination import CustomPagination
from .permissions import IsAuthorOrReadOnly
from .serializers import (IngredientSerializer, FavoriteSerializer,
                          RecipeListSerializer, RecipeSerializer,
                          ShoppingListSerializer, TagSerializer)


class TagViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Tag.objects.all()
    serializer_class = TagSerializer
    permission_classes = [AllowAny, ]


class IngredientViewSet(viewsets.ReadOnlyModelViewSet):
    queryset = Ingredient.objects.all()
    serializer_class = IngredientSerializer
    permission_classes = [AllowAny, ]


class RecipeViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthorOrReadOnly, ]
    queryset = Recipe.objects.all()
    serializer_class = RecipeListSerializer
    pagination_class = CustomPagination

    def get_serializer_class(self):
        if (self.request.method == 'GET' #or self.action in ['favorite', 'shopping_cart', ]
            ):
            return RecipeListSerializer
        return RecipeSerializer

    def perform_create(self, serializer):
        serializer.save(author=self.request.user)

    def destroy(self, request, *args, **kwargs):
        instance = self.get_object()
        self.perform_destroy(instance)
        return Response(status=status.HTTP_204_NO_CONTENT)

    def get_permissions(self):
        if self.action == 'retrieve':
            self.permission_classes = [IsAuthorOrReadOnly, ]
        return super().get_permissions()

    @action(detail=True, methods=['POST', 'DELETE'])
    def favorite(self, request, pk):
        recipe = get_object_or_404(Recipe, pk=pk)
        context = {'request': request}
        if self.request.method == 'POST':
            if (Favorite.objects.filter(user=request.user, recipe=recipe).exists()):
                return Response('Рецепт уже есть в избранном',
                                status=status.HTTP_400_BAD_REQUEST)
            Favorite.objects.get_or_create(user=request.user, recipe=recipe)
            data = FavoriteSerializer(recipe, context=context).data
            return Response(data, status=status.HTTP_201_CREATED)
        if Favorite.objects.filter(user=request.user, recipe=recipe).exists():
            follow = get_object_or_404(Favorite,
                                       user=request.user, recipe=recipe)
            follow.delete()
            return Response('Рецепт удален из избранного',
                            status=status.HTTP_204_NO_CONTENT)
        return Response('Рецепта нет в избранном',
                        status=status.HTTP_400_BAD_REQUEST)

    @action(detail=True, methods=['POST', 'DELETE'])
    def shopping_cart(self, request, pk):
        recipe = get_object_or_404(Recipe, pk=pk)
        context = {'request': request}
        if self.request.method == 'POST':
            if (ShoppingList.objects.filter(user=request.user, recipe=recipe
                                            ).exists()):
                return Response('Рецепт уже есть в списке покупок',
                                status=status.HTTP_400_BAD_REQUEST)
            ShoppingList.objects.get_or_create(user=request.user,
                                               recipe=recipe)
            data = ShoppingListSerializer(recipe, context=context).data
            return Response(data, status=status.HTTP_201_CREATED)
        if ShoppingList.objects.filter(user=request.user, recipe=recipe
                                       ).exists():
            follow = get_object_or_404(ShoppingList,
                                       user=request.user, recipe=recipe)
            follow.delete()
            return Response('Рецепт удален из списка покупок',
                            status=status.HTTP_204_NO_CONTENT)
        return Response('Рецепта нет в списке покупок',
                        status=status.HTTP_400_BAD_REQUEST)
