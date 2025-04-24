# Start with PHP 8.2 + Apache
FROM php:8.2-apache

# Set working directory in the container
WORKDIR /var/www/html

# Install required system packages
RUN apt-get update && apt-get install -y \
    mariadb-client \
    && docker-php-ext-install mysqli pdo pdo_mysql \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Copy your PHP app from host to container
COPY cafe/ /var/www/html/

# Fix permissions (optional but helpful)
RUN chmod -R 755 /var/www/html

# Expose port 80 (HTTP)
<<<<<<< HEAD
EXPOSE 80
=======
EXPOSE 80
>>>>>>> d5d1e73f57d4fcc0827a0939bafe49f7a6483098
