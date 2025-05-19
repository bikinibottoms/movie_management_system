from django.db import models

class MovieGenre(models.Model):
    genre_name = models.CharField(max_length=255, primary_key=True, null=False)
    
    def __str__(self):
        return self.genre_name