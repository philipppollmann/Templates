#!/bin/bash
python3 manage.py startapp DjangoWebApp

# Register the App in Django Server in Settings.py
#INSTALLED_APPS = [
    # ...
#    'myapp',
    # ...
#]

python3 manage.py migrate