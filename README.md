# praktikum_new_diplom
«Продуктовый помощник». На этом сервисе пользователи могут публиковать рецепты, подписываться на публикации других пользователей, добавлять понравившиеся рецепты в список «Избранное», а перед походом в магазин скачивать сводный список продуктов, необходимых для приготовления одного или нескольких выбранных блюд.
___
![DjangoREST](https://img.shields.io/badge/DJANGO-REST-ff1709?style=for-the-badge&logo=django&logoColor=white&color=ff1709&labelColor=gray)
![Django](https://img.shields.io/badge/django-%23092E20.svg?style=for-the-badge&logo=django&logoColor=white)
![SQLite](https://img.shields.io/badge/sqlite-%2307405e.svg?style=for-the-badge&logo=sqlite&logoColor=white)
![pythonversion](https://img.shields.io/badge/python-%3E%3D3.9-blue)
![react](https://img.shields.io/badge/-ReactJs-61DAFB?logo=react&logoColor=white&style=for-the-badge)

## Оглавление
1. [Описание](#описание)
2. [Стек технологий](#стек-технологий)
3. [Как запустить проект](#как-запустить-проект)
4. [Автор проекта](#автор-проекта)


## Описание
При подключении к Foodgram доступны все возможности проекта: можно зарегистрироваться и авторизоваться, добавить новый рецепт на сайт или изменить существующий, а также просмотреть рецепты других пользователей.
Секреты подключаются из файла .env.
В проекте Foodgram подгружаются файлы со стилями для панели администратора.



## Стек технологий
- проект написан на Python с использованием Django, Django REST Framework
- базы данны - PostgreSQL
- система контроля версий - git
- frontend - React



## Как запустить проект:

- Переходим в директорию проекта
```
cd /infra
```

- Параметры .env
```
cd /infra/.env

SECRET_KEY = ''
POSTGRES_DB=foodgram
POSTGRES_USER=<user>
POSTGRES_PASSWORD=<password>
DB_HOST=db
DB_PORT=5432
MEDIA_DOMAIN='http://prjct.ddns.net'
ALLOWED_HOSTS='158.160.69.26 127.0.0.1 backend localhost prjct.ddns.net'
DEBUG=False

```

- Запускаем docker compose файл конфигурации проекта docker-compose.yml
```
cd /infra
sudo docker compose -f docker-compose.yml up -d
```

- Выполнить миграции:
```
sudo docker compose -f docker-compose.yml exec backend python manage.py makemigrations users
sudo docker compose -f docker-compose.yml exec backend python manage.py makemigrations api
sudo docker compose -f docker-compose.yml exec backend python manage.py migrate
```

- Создать суперпользователя:
```
sudo docker compose exec backend python manage.py createsuperuser
```

- Собираем статику приложения:
```
sudo docker compose -f docker-compose.yml exec backend python manage.py collectstatic
```

- В папке data подготовлен список ингредиентов с единицами измерения и теги.
Список сохранён в форматах JSON и CSV: данные из списка необходимо загрузить в базу через админку проекта (импорт). 

```
http://localhost/admin/api/ingredient/import/
http://localhost/admin/api/tag/import/
```

- Создать бэкап базы данных:
```
docker compose exec db pg_dump -c -U <user> foodgram  > ../backend/data/foodgram_db.sql
```

- Восстановить базу данных из дампа:
```
sudo cat ../backend/data/foodgram_db.sql | docker compose exec -T db psql -U <user> foodgram
```

- Остановить docker container и удалить все зависимости:
!!!ВНИМАНИЕ!!! удалит volumes со всеми данными базы данных
```
cd /infra
sudo docker compose down -v
```

## Автор проекта
_[Мария Константинова](https://github.com/wildcat3333)_, python-developer

___
<p>
    <span>© 2023, Contributors on git </span>
</p>
