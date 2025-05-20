from django.db import models
from django.core.validators import MinValueValidator
from production_companies.models import ProductionCompany
from directors.models import Director
from actors.models import Actor
from genres.models import MovieGenre

class Movie(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=255, null=False)
    length = models.IntegerField(null=False)
    plot_summary = models.TextField(blank=True, null=True)
    production_company = models.ForeignKey(
        ProductionCompany, 
        on_delete=models.CASCADE,
        related_name='movies'
    )
    release_year = models.IntegerField(
        validators=[MinValueValidator(1896)]
    )
    directors = models.ManyToManyField(
        Director,
        through='MovieDirector',
        related_name='movies'
    )
    actors = models.ManyToManyField(
        Actor,
        through='MovieActorRelation',
        related_name='movies'
    )
    genres = models.ManyToManyField(
        MovieGenre,
        through='MovieGenreRelation',
        related_name='movies'
    )
    
    def __str__(self):
        return self.name

class MovieDirector(models.Model):
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    director = models.ForeignKey(Director, on_delete=models.CASCADE)
    
    class Meta:
        unique_together = ('movie', 'director')

class MovieActorRelation(models.Model):
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    actor = models.ForeignKey(Actor, on_delete=models.CASCADE)
    
    class Meta:
        unique_together = ('movie', 'actor')

class MovieGenreRelation(models.Model):
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    genre = models.ForeignKey(MovieGenre, on_delete=models.CASCADE)
    
    class Meta:
        unique_together = ('movie', 'genre')

class MovieNarrator(models.Model):
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    actor = models.ForeignKey(Actor, on_delete=models.CASCADE)
    content = models.TextField(null=False)
    
    class Meta:
        unique_together = ('movie', 'actor')

class MovieRole(models.Model):
    role_name = models.CharField(max_length=255, null=False)
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    actor = models.ForeignKey(Actor, on_delete=models.CASCADE)
    
    class Meta:
         unique_together = ('movie', 'actor', 'role_name') 