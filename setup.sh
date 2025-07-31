#!/bin/bash


docker network create net1
docker pull mysql:latest

docker run --name mysql1 --network net1 -e MYSQL_ROOT_PASSWORD=my-secret-pw -e MYSQL_DATABASE=joomladb -e MYSQL_USER=joomlauser -e MYSQL_PASSWORD=joomlapw -p 3306:3306 -d mysql:latest

docker run --name joomla1 --network net1 -e JOOMLA_DB_HOST=mysql1 -e JOOMLA_DB_USER=joomlauser -e JOOMLA_DB_PASSWORD=joomlapw -e JOOMLA_DB_NAME=joomladb -p 8080:80 -d joomla
