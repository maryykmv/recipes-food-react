from django.contrib.auth import get_user_model
from django.db import models
from django.utils.translation import gettext_lazy as _

User = get_user_model()


class Tag(models.Model):
    name = models.CharField(
        verbose_name=_('Название'),
        help_text=_('Название'),
        max_length=200,
        unique=True
    )
    color = models.CharField(
        verbose_name=_('Цветовой HEX-код'),
        help_text=_('Цветовой HEX-код'),
        max_length=7,
        unique=True,
        default='#49B64E'
    )
    slug = models.SlugField(
        verbose_name=_('Идентификатор'),
        help_text=_('Идентификатор'),
        max_length=200,
        unique=True
    )

    class Meta:
        verbose_name = 'Тег'
        verbose_name_plural = 'Теги'

    def __str__(self):
        return self.name


class Ingredient(models.Model):
    name = models.CharField(
        verbose_name=_('Название'),
        help_text=_('Название'),
        max_length=200
    )
    measurement_unit = models.CharField(
        verbose_name=_('Единица измерения'),
        help_text=_('Единица измерения'),
        max_length=200
    )

    class Meta:
        verbose_name = 'Ингредиент'
        verbose_name_plural = 'Ингредиенты'

    def __str__(self):
        return self.name


class Recipe(models.Model):
    author = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='recipes',
        verbose_name='Автор'
    )
    name = models.CharField(
        'Название',
        max_length=200
    )
    image = models.ImageField(
        verbose_name=_('Изображение'),
        help_text=_('Изображение'),
        upload_to='recipes/'
    )
    text = models.TextField(
        verbose_name=_('Описание'),
        help_text=_('Описание')
    )
    ingredients = models.ManyToManyField(
        Ingredient,
        through='IngredientRecipe',
        verbose_name=_('Ингредиенты'),
        help_text=_('Ингредиенты')

    )
    tags = models.ManyToManyField(
        Tag,
        verbose_name=_('Теги'),
        help_text=_('Теги')
    )
    cooking_time = models.IntegerField(
        verbose_name=_('Время приготовления в минутах'),
        help_text=_('Время приготовления в минутах')
    )

    class Meta:
        ordering = ['-id']
        verbose_name = 'Рецепт'
        verbose_name_plural = 'Рецепты'
        constraints = [
            models.UniqueConstraint(fields=['author', 'name'],
                                    name='unique_author_name')
        ]

    def __str__(self):
        return self.name


class IngredientRecipe(models.Model):
    recipe = models.ForeignKey(
        Recipe,
        on_delete=models.CASCADE,
        verbose_name='Рецепт'
    )
    ingredient = models.ForeignKey(
        Ingredient,
        on_delete=models.CASCADE,
        verbose_name='Ингредиент'
    )
    amount = models.IntegerField(
        verbose_name=_('Количество'),
        help_text=_('Количество')
    )

    class Meta:
        ordering = ['-id']
        verbose_name = 'Количество ингредиента'
        verbose_name_plural = 'Количество ингредиентов'
        constraints = [
            models.UniqueConstraint(fields=['recipe', 'ingredient'],
                                    name='unique_recipe_ingredient')
        ]


class Favorite(models.Model):
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='favorites',
        verbose_name=_('Автор')
    )
    recipe = models.ForeignKey(
        Recipe,
        on_delete=models.CASCADE,
        related_name='favorites',
        verbose_name=_('Список избранного')
    )

    class Meta:
        verbose_name = 'Избранное'
        verbose_name_plural = 'Избранные'
        constraints = [
            models.UniqueConstraint(fields=['user', 'recipe'],
                                    name='unique_favorite_recipe')
        ]

    def __str__(self):
        return f'{self.recipe} {self.user}'


class ShoppingList(models.Model):
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='list',
        verbose_name=_('Автор')
    )
    recipe = models.ForeignKey(
        Recipe,
        on_delete=models.CASCADE,
        related_name='list',
        verbose_name=_('Список покупок')
    )

    class Meta:
        verbose_name = 'Список покупок'
        verbose_name_plural = 'Списки покупок'
        constraints = [
            models.UniqueConstraint(fields=['user', 'recipe'],
                                    name='unique_user_recipe')
        ]

    def __str__(self):
        return f'{self.recipe} {self.user}'
