# movie_management_system/movies/urls.py
from django.urls import path
from .views import MovieListView, MovieDetailView, MovieCreateView, MovieUpdateView, MovieDeleteView, search_movie_info
from. import views

app_name = 'movies'

urlpatterns = [
    path('', views.MovieListView.as_view(), name='movie_list'),
    path('<int:pk>/', MovieDetailView.as_view(), name='movie_detail'),
    path('add/', MovieCreateView.as_view(), name='movie_add'),
    path('<int:pk>/edit/', MovieUpdateView.as_view(), name='movie_edit'),
    path('<int:pk>/delete/', MovieDeleteView.as_view(), name='movie_delete'),
    path('search/', search_movie_info, name='movie_search'),
]



  