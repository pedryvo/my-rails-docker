#!/bin/bash

docker-compose run web rails new . --force --database=postgresql && sudo chown -R $USER:$USER . && docker-compose build && rm config/database.yml && mv database.yml config/ && docker-compose up && docker-compose run web rake db:create && docker-compose up
