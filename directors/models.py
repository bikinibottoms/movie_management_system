from django.db import models

class Director(models.Model):
    name = models.CharField(max_length=255, primary_key=True, null=False)
    birth_date = models.DateField(blank=True, null=True)
    
    def __str__(self):
        return self.name