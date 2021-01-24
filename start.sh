#! /usr/bin/env sh
set -e
exec gunicorn -c gunicorn_conf.py main:app
