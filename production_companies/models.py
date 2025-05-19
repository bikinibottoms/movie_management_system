from django.db import models

class ProductionCompany(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, null=False)
    city = models.CharField(max_length=255, blank=True, null=True)
    
    def __str__(self):
        return self.name