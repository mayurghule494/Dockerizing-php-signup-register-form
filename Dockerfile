# Base image
FROM php:latest

# Install pdo_mysql extension
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli
# Set the working directory
WORKDIR /app

# Copy server.php to the working directory
COPY . .

# Expose the desired port
EXPOSE 8000

# Start the PHP built-in server
CMD ["php", "-S", "0.0.0.0:8000", "server.php"]

