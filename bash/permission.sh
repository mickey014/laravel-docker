#!/bin/sh

echo "🔧 Fixing Laravel folder permissions..."

# Create folders if they don't exist (useful in new projects)
mkdir -p /var/www/storage /var/www/bootstrap/cache

chown -R www-data:www-data /var/www/storage /var/www/bootstrap/cache
chmod -R 775 /var/www/storage /var/www/bootstrap/cache

exec "$@"