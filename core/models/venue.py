from django.db import models


class Venue(models.Model):
    name = models.CharField(max_length=280)  # NOT NULL by default
    link = models.URLField()                 # To e.g. map ref.

    class Meta:
        verbose_name = "Venue"
        verbose_name_plural = "Venues"

    def __str__(self):
        return "{0} {1}".format(self.name, self.link)
