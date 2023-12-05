#!/bin/bash

echo "Remove Airflow Services"
docker-compose down
echo "Remove Airflow Success"
sleep 3

echo "Remove Folder and Permission"
rm -rf ./dags ./logs ./plugins ./config
chmod 777 -R .
echo "Remove Success"
sleep 3
