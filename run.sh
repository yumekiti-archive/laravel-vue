docker-compose up --build -d && \
composer install && \
docker-compose exec php cp .env.example .env && \
docker-compose exec php php artisan key:generate && \
docker-compose exec php php artisan migrate --seed
