from django.conf import settings
from django.contrib import admin

from .models import (Ingredient, Favorite, Recipe, IngredientRecipe,
                     ShoppingList, Tag)

from import_export.admin import ImportExportModelAdmin


class TagAdmin(ImportExportModelAdmin):
    list_display = ('id', 'name', 'color', 'slug')
    search_fields = ('name', 'slug')
    list_filter = ('name', 'slug',)
    ordering = ('name',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class IngredientAdmin(ImportExportModelAdmin):
    list_display = ('id', 'name', 'measurement_unit')
    search_fields = ('name',)
    list_filter = ('name',)
    ordering = ('id',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class RecipeAdmin(admin.ModelAdmin):
    list_display = ('id', 'name', 'author', 'count_favorites')
    search_fields = ('username', 'email',)
    list_filter = ('name', 'author', 'tags',)
    ordering = ('name',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY

    def count_favorites(self, obj):
        return obj.favorites.count()


class IngredientRecipeAdmin(admin.ModelAdmin):
    list_display = ('id', 'recipe', 'ingredient', 'amount')
    search_fields = ('recipe', 'ingredient',)
    list_filter = ('recipe', 'ingredient',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class FavoriteAdmin(admin.ModelAdmin):
    list_display = ('id', 'user', 'recipe')
    search_fields = ('user', 'recipe',)
    list_filter = ('user', 'recipe',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class ShoppingListAdmin(admin.ModelAdmin):
    list_display = ('id', 'user', 'recipe')
    search_fields = ('user', 'recipe',)
    list_filter = ('user', 'recipe',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


admin.site.register(Tag, TagAdmin)
admin.site.register(Ingredient, IngredientAdmin)
admin.site.register(Recipe, RecipeAdmin)
admin.site.register(IngredientRecipe, IngredientRecipeAdmin)
admin.site.register(Favorite, FavoriteAdmin)
admin.site.register(ShoppingList, ShoppingListAdmin)
