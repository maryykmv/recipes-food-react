from django.contrib.auth import get_user_model
from django.shortcuts import get_object_or_404
from djoser.views import UserViewSet
from rest_framework import status
from rest_framework.decorators import action
from rest_framework.permissions import IsAuthenticated
from rest_framework.response import Response

from .models import Subscription
from api.serializers import SubscriptionSerializer
from api.pagination import CustomPagination

User = get_user_model()


class CustomUserViewSet(UserViewSet):
    pagination_class = CustomPagination

    @action(detail=True, methods=['POST', 'DELETE'],
            permission_classes=[IsAuthenticated])
    def subscribe(self, request, id=None):
        user = request.user
        author = get_object_or_404(User, id=id)
        if self.request.method == 'POST':
            if Subscription.objects.filter(user=user, author=author).exists():
                return Response('Вы уже подписаны на пользователя',
                                status=status.HTTP_400_BAD_REQUEST)
            if user == author:
                return Response('Нельзя подписаться на самого себя',
                                status=status.HTTP_400_BAD_REQUEST)
            follow = Subscription.objects.create(user=user, author=author)
            serializer = SubscriptionSerializer(
                follow, context={'request': request})
            return Response(serializer.data, status=status.HTTP_201_CREATED)
        if Subscription.objects.filter(user=user, author=author).exists():
            follow = get_object_or_404(Subscription, user=user, author=author)
            follow.delete()
            return Response('Подписка удалена',
                            status=status.HTTP_204_NO_CONTENT)
        if user == author:
            return Response('Нельзя отписаться от самого себя',
                            status=status.HTTP_400_BAD_REQUEST)
        return Response('Вы не подписаны на пользователя',
                        status=status.HTTP_400_BAD_REQUEST)

    @action(detail=False, methods=['GET'],
            permission_classes=[IsAuthenticated])
    def subscriptions(self, request):
        user = request.user
        queryset = Subscription.objects.filter(user=user)
        pages = self.paginate_queryset(queryset)
        serializer = SubscriptionSerializer(
            pages,
            many=True,
            context={'request': request}
        )
        return self.get_paginated_response(serializer.data)
