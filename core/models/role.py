from django.db import models


class Role(models.Model):
    name = models.CharField(max_length=280)
    description = models.TextField()
    training_notes = models.TextField()
    # TODO trainer FKs, Manager FKs etc.

    class Meta:
        verbose_name = "Role"
        verbose_name_plural = "Roles"

    def __str__(self):
        return self.name
