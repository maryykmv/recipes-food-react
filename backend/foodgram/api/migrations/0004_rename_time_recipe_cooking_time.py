# Generated by Django 4.2.1 on 2023-05-30 15:46

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0003_rename_units_ingredientrecipe_unit'),
    ]

    operations = [
        migrations.RenameField(
            model_name='recipe',
            old_name='time',
            new_name='cooking_time',
        ),
    ]
