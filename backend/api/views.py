from rest_framework import viewsets

from .mixins import ListRetrieveViewSet
from .models import Ingredient, Recipe, Tag
from .pagination import CustomPagination
from .serializers import (IngredientSerializer, TagSerializer)


class TagViewSet(ListRetrieveViewSet):
    queryset = Tag.objects.all()
    serializer_class = TagSerializer


class IngredientViewSet(ListRetrieveViewSet):
    queryset = Ingredient.objects.all()
    serializer_class = IngredientSerializer


class RecipeViewSet(viewsets.ModelViewSet):
    queryset = Recipe.objects.all()
    pagination_class = CustomPagination
