## Docker compose sample
version: '3.0'

services:
  web:
    image: nginx
    ports:
      - "80:80"
  php:
    image: php:7.0
    ports:
      - "80:80"
  db:
    image: mysql
    volumes:
      - db-data:/var/lib/mysql/data

  phpmyadmin:
    image: phpmyadmin/phpmyadmin
    ports:
      - "8580:80"
    links:
      - db
    env_file:
      - .ENV
volumes:
  db-data: