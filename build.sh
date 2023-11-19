#!/usr/bin/env bash
# exit on error
set -o errexit

install poetry -d ./
./requirements.txt install -r


python manage.py collectstatic --no-input
python manage.py migrate