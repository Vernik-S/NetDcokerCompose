#!/bin/bash

sleep 10

# Collect static files
echo "Collect static files"
python manage.py collectstatic --noinput

# Apply database migrations
echo "Apply database migrations"
python manage.py migrate

# Start server
echo "Starting server"
gunicorn stocks_products.wsgi -b 0.0.0.0:8080 
