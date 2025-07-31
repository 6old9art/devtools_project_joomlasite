#!/bin/bash

sudo apt update
devtools
y
sudo apt install MySQL-client-core-8.0
docker exec mysql1 sh -c 'exec mysqldump --all-databases -uroot -pmy-secret-pw' | gzip > my-joomla.backup.sql.gz
docker exec joomla1 tar -czf - /var/www/html > joomla-files.tar.gz
