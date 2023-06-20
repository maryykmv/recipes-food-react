import django_filters

from .models import Ingredient, Recipe, Tag


class RecipeFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(lookup_expr='iexact')
    author = django_filters.NumberFilter(
        field_name='author',
        lookup_expr='exact'
    )
    tags = django_filters.ModelMultipleChoiceFilter(
        field_name='tags__slug',
        to_field_name='slug',
        queryset=Tag.objects.all(),
    )

    class Meta:
        model = Recipe
        fields = ['name', 'author', 'tags']


class IngredientFilter(django_filters.FilterSet):
    name = django_filters.CharFilter(lookup_expr='istartswith')

    class Meta:
        model = Ingredient
        fields = ['name']
