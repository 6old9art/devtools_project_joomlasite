#!/bin/bash

git clone https://github.com/6old9art/devtools_project_joomlasite
cd devtools_project_joomlasite

gunzip my-joomla.backup.sql.gz

docker exec -i mysql1 sh -c "exec mysql -uroot -pmy-secret-pw joomladb" < my-joomla.backup.sql
gunzip joomla-file.tar.gz

tar -xf joomla-files.tar

docker cp -a joomla-files/var/www/html/. joomla1:/var/www/html/

docker restart joomla1
