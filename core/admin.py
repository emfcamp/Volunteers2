from django.contrib import admin

from .models import Venue, Role

admin.site.register([Venue, Role])
