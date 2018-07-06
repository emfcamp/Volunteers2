import os
from .common import * # noqa

# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'ThisIsASuperSecretKeyThatReallyShouldNotBeUsed'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = [
    '0.0.0.0',                         # Add for vagrant
    'localhost', '127.0.0.1', '[::1]'  # Django defaults
]

# Database
# https://docs.djangoproject.com/en/2.0/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': 'emf_volunteers',
        'USER': 'vagrant',
    }
}
