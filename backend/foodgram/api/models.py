# from django.contrib.auth import get_user_model
from django.db import models
from django.utils.translation import gettext_lazy as _
from users.models import User
# User = get_user_model()


class Ingredient(models.Model):
    name = models.CharField(max_length=200)
    measurement_unit = models.CharField(max_length=10)

    def __str__(self):
        return self.name


class Tag(models.Model):
    name = models.CharField(max_length=16, unique=True)
    color = models.CharField(max_length=16, unique=True)
    slug = models.SlugField(unique=True)


class Recipe(models.Model):
    author = models.ForeignKey(
        User, on_delete=models.CASCADE, related_name='foods'
    )
    name = models.CharField(max_length=200)
    image = models.ImageField(
        upload_to='foods/'
    )
    text = models.TextField()
    ingredients = models.ManyToManyField(Ingredient)
    tags = models.ManyToManyField(Tag)
    cooking_time = models.IntegerField()

    def __str__(self):
        return (f'id: {self.id}, name: {self.text[:15]}'
                f', author: {self.author.username}'
                )


class ShoppingList(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    recipes = models.ForeignKey(Recipe, on_delete=models.CASCADE)


class Favorite(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    recipes = models.ForeignKey(Recipe, on_delete=models.CASCADE)


class Subscription(models.Model):
    user = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='subscriber',
        verbose_name=_('Подписчик'),
        help_text=_('Пользователь, который подписывается')
    )
    author = models.ForeignKey(
        User,
        on_delete=models.CASCADE,
        related_name='author',
        verbose_name=_('Автор'),
        help_text=_('Автор рецепта')
    )

    class Meta:
        constraints = [
            models.UniqueConstraint(
                fields=['user', 'author'],
                name='unique author')
        ]
        verbose_name = 'Подписка'
        verbose_name_plural = 'Подсписки'

    def __str__(self):
        return f'{self.author.username}, {self.user.username}'
