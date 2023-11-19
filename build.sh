#!/usr/bin/env bash
# exit on error
set -o errexit

install poetry -d ./

python manage.py collectstatic --no-input
python manage.py migrate