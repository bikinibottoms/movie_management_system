# movie_management_system/movies/admin.py
from django.contrib import admin
from .models import Movie, MovieDirector, MovieActorRelation, MovieGenreRelation, MovieNarrator, MovieRole

admin.site.register(Movie)
admin.site.register(MovieDirector)
admin.site.register(MovieActorRelation)
admin.site.register(MovieGenreRelation)
admin.site.register(MovieNarrator)
admin.site.register(MovieRole)