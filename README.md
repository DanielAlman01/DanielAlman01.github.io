

# DanielAlman01.github.io

version: '3.8' 
services: 
web: 
image: wordpress:latest 
ports: "8080:80" 
environment: 
WORDPRESS_DB_HOST: db 
WORDPRESS DB USER: exampleuser WORDPRESS_DB_PASSWORD: ${MYSQL_PASSWORD} WORDPRESS_DB_NAME: exampledb networks: frontend backend 
db
image: mysql:5.7 
environment: 
MYSQL DATABASE: exampledb 
MYSQL USER: exampleuser MYSQL_PASSWORD: ${MYSQL_PASSWORD} MYSQL_ROOT_PASSWORD: ${MYSQL_ROOT_PASSWORD} volumes: db_data:/var/lib/mysql networks: backend volumes: db_data: networks: frontend: backend: