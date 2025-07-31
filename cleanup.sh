#!/bin/bash

cd ~
docker stop mysql1
docker rm mysql1
docker stop joomla1
docker rm joomla1
docker rmi mysql
docker rmi joomla
docker volume rm -f $(docker volume ls -q)
rm -rf devtools_project_joomlasite
docker network rm net1
cd ~
if [ -f "my-joomla.backup.sql.gz"]; then
  rm "my-joomla.backup.sql.gz"
  rm "joomla-files.tar.gz"
fi
