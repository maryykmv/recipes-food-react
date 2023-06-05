from django.contrib.auth.models import AbstractUser
from django.db import models
from django.utils.translation import gettext_lazy as _


class CustomUser(AbstractUser):
    email = models.EmailField(
        verbose_name=_('email'),
        help_text=_('email'),
        max_length=100,
        unique=True
    )
    first_name = models.CharField(
        verbose_name=_('Имя'),
        help_text=_('Имя'),
        max_length=30,
        blank=False,
        null=False
    )
    last_name = models.CharField(
        verbose_name=_('Фамилия'),
        help_text=_('Фамилия'),
        max_length=150,
        blank=False,
        null=False)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = [
        'username',
        'password',
        'first_name',
        'last_name',
    ]


class Subscription(models.Model):
    user = models.ForeignKey(
        CustomUser,
        on_delete=models.CASCADE,
        related_name='follower',
        verbose_name=_('Подписчик'),
        help_text=_('Пользователь, который подписывается')
    )
    author = models.ForeignKey(
        CustomUser,
        on_delete=models.CASCADE,
        related_name='following',
        verbose_name=_('Автор'),
        help_text=_('Автор рецептов')
    )

    class Meta:
        constraints = [
            models.UniqueConstraint(
                fields=['user', 'author'],
                name='unique_following')
        ]
        verbose_name = 'Подписка'
        verbose_name_plural = 'Подсписки'

    def __str__(self):
        return f'{self.user} {self.author}'
