#!/usr/bin/env bash
# exit on error
set -o errexit

poetry-1.5.1 install

python manage.py collectstatic --no-input
python manage.py migrate