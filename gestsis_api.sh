
docker run --rm -it --name api --mount type=bind,source="$(pwd)/GestSIS_API",target=/app -p 8000:8000 composer:latest sh


composer install
php artisan migrate --step
php artisan seed
php artisan serve
