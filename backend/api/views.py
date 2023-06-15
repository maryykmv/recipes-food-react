from django.shortcuts import get_object_or_404
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework import status, viewsets
from rest_framework.decorators import action
from rest_framework.permissions import AllowAny, IsAuthenticated
from rest_framework.response import Response
from django.db.models import Sum

from io import BytesIO

from django.http import HttpResponse
from reportlab.platypus import SimpleDocTemplate, Paragraph, TableStyle
from reportlab.lib.styles import getSampleStyleSheet, ParagraphStyle
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter
from reportlab.platypus import Table
from django.contrib.auth.decorators import login_required
from reportlab.pdfbase import pdfmetrics, ttfonts
from reportlab.pdfgen import canvas


from .filters import IngredientFilter, RecipeFilter
from .models import Ingredient, Favorite, Recipe, ShoppingList, Tag, IngredientRecipe
from .pagination import CustomPagination
from .permissions import IsAuthorOrReadOnly
from .serializers import (IngredientSerializer, FavoriteSerializer,
                          RecipeListSerializer, RecipeSerializer,
                          ShoppingListSerializer, TagSerializer)


class TagViewSet(viewsets.ModelViewSet):
    queryset = Tag.objects.all()
    serializer_class = TagSerializer
    permission_classes = [AllowAny, ]


class IngredientViewSet(viewsets.ModelViewSet):
    queryset = Ingredient.objects.all()
    serializer_class = IngredientSerializer
    permission_classes = [AllowAny, ]
    filter_backends = (DjangoFilterBackend,)
    filterset_class = IngredientFilter


class RecipeViewSet(viewsets.ModelViewSet):
    permission_classes = [IsAuthorOrReadOnly, ]
    queryset = Recipe.objects.all()
    serializer_class = RecipeListSerializer
    pagination_class = CustomPagination
    filter_backends = (DjangoFilterBackend,)
    filterset_class = RecipeFilter

    def get_serializer_class(self):
        if (self.request.method == 'GET'):
            return RecipeListSerializer
        return RecipeSerializer

    def get_queryset(self):
        if self.request.GET.get('is_favorited'):
            return Recipe.objects.filter(favorites__user=self.request.user)
        if self.request.GET.get('is_in_shopping_cart'):
            return Recipe.objects.filter(list__user=self.request.user)
        return Recipe.objects.all()

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

    @action(
    detail=False,
    permission_classes=[IsAuthenticated, ])
    def download_shopping_cart(self, request):
        pdfmetrics.registerFont(ttfonts.TTFont('Arial', 'Arial.ttf'))
        user = request.user
        buff = BytesIO()
        doc = SimpleDocTemplate(buff,
                                pagesize=letter,
                                rightMargin=40,
                                leftMargin=40,
                                topMargin=60,
                                bottomMargin=18,
                                )
        ingredients = []
        styles = getSampleStyleSheet()
        pstyle = ParagraphStyle('yourtitle',
                           fontName="Arial",
                           fontSize=16,
                           parent=styles['Heading1'],
                           alignment=1,
                           spaceAfter=14)
        header = Paragraph("Список продуктов", pstyle)
        ingredients.append(header)
        headings = ('Название', 'Количество', 'Единица измерения')
        allingredients = [(p["ingredient__name"],
                           p["amount"],
                           p["ingredient__measurement_unit"])
                           for p in IngredientRecipe.objects.filter(
            recipe__list__user=user).values(
            'ingredient__name',
            'ingredient__measurement_unit'
        ).annotate(
            amount=Sum('amount')
        ).order_by()]

        t = Table([headings] + allingredients)
        t.setStyle(TableStyle(
            [
                ('GRID', (0, 0), (6, -1), 1, colors.azure),
                ('LINEBELOW', (0, 0), (-1, 0), 2, colors.azure),
                ('BACKGROUND', (0, 0), (-1, 0), colors.azure),
                ('FONT', (0, 0), (-1, 1), 'Arial', 14)
            ]
        ))

        ingredients.append(t)
        doc.build(ingredients)
        response = HttpResponse(content_type='application/pdf')
        response['Content-Disposition'] = 'attachment; filename=shopping_list.pdf'
        response.write(buff.getvalue())
        buff.close()
        return response
