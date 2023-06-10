from django.conf import settings
from django.contrib import admin
from django.contrib.auth.admin import UserAdmin

from .models import CustomUser, Subscription


class CustomUserAdmin(UserAdmin):
    model = CustomUser
    list_display = (
        'pk',
        'username',
        'email',
        'first_name',
        'last_name'
    )
    search_fields = ('email', 'username',)
    list_filter = ('email', 'username',)
    ordering = ('id',)
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


class SubscriptionAdmin(admin.ModelAdmin):
    list_display = ('user', 'author')
    search_fields = ('user', 'author')
    list_filter = ('user', 'author')
    empty_value_display = settings.EMPTY_VALUE_DISPLAY


admin.site.register(CustomUser, CustomUserAdmin)
admin.site.register(Subscription, SubscriptionAdmin)
