#!/bin/bash

echo "Create Folder and Permission"
mkdir -p ./dags ./logs ./plugins ./config
chmod 777 -R .
sleep 3

echo "Init Setting Airflow"
docker-compose up airflow-init
echo "Init Succest"
sleep 3

echo "Run Airflow Services"
docker-compose up -d
echo "Run Airflow Success"
sleep 3

echo "Access on http://127.0.0.1:8080"

