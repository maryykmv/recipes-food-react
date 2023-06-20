from django.conf import settings
from django.contrib import admin

from import_export.admin import ImportExportModelAdmin

from .models import (Ingredient, IngredientRecipe, Favorite, Recipe,
                     ShoppingList, Tag)


class TagAdmin(ImportExportModelAdmin):
    list_display = ['pk', 'name', 'color', 'slug']
    search_fields = ['name', 'slug']
    list_filter = ['name', 'slug']
    ordering = ['name']
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class IngredientAdmin(ImportExportModelAdmin):
    list_display = ['pk', 'name', 'measurement_unit']
    search_fields = ['name']
    list_filter = ['name']
    ordering = ['id']
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class RecipeAdmin(admin.ModelAdmin):
    list_display = ['pk', 'name', 'author', 'count_favorites', 'get_tags']
    search_fields = ['name', 'author__email', 'tags__name']
    list_filter = ['name', 'author__email', 'tags__name']
    ordering = ['name']
    empty_value_display = settings.EMPTY_VALUE_DISPLAY

    def count_favorites(self, obj):
        return obj.favorites.count()

    @admin.display(description='tags')
    def get_tags(self, obj):
        return [tag.name for tag in obj.tags.all()]


class IngredientRecipeAdmin(admin.ModelAdmin):
    list_display = ['pk', 'recipe', 'ingredient', 'amount']
    search_fields = ['recipe', 'ingredient']
    list_filter = ['recipe', 'ingredient']
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class FavoriteAdmin(admin.ModelAdmin):
    list_display = ['pk', 'user', 'recipe']
    search_fields = ['user', 'recipe']
    list_filter = ['user', 'recipe']
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class ShoppingListAdmin(admin.ModelAdmin):
    list_display = ['pk', 'user', 'recipe']
    search_fields = ['user', 'recipe']
    list_filter = ['user', 'recipe']
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


admin.site.register(Tag, TagAdmin)
admin.site.register(Ingredient, IngredientAdmin)
admin.site.register(Recipe, RecipeAdmin)
admin.site.register(IngredientRecipe, IngredientRecipeAdmin)
admin.site.register(Favorite, FavoriteAdmin)
admin.site.register(ShoppingList, ShoppingListAdmin)
