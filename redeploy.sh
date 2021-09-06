#!/bin/sh
echo "###### running docker compose down ######"
docker-compose -f "docker-compose.yml" down
echo "###### pulling image from docker ######"
docker-compose -f "docker-compose.yml" pull
echo "###### running docker compose up ######"
docker-compose -f "docker-compose.yml" up -d --build