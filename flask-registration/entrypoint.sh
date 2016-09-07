#!/bin/bash

 /usr/local/bin/wait-for-it.sh db:5432

printenv

cd /app
sh create.sh
python manage.py runserver --host=0.0.0.0
