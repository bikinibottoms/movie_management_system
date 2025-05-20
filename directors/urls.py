from django.urls import path
from. import views

app_name = 'directors'

urlpatterns = [
    path('', views.DirectorListView.as_view(), name='director_list'),
    path('add/', views.DirectorCreateView.as_view(), name='director_add'),
    path('<str:name>/', views.DirectorDetailView.as_view(), name='director_detail'),
    path('<str:name>/edit/', views.DirectorUpdateView.as_view(), name='director_edit'),
    path('<str:name>/delete/', views.DirectorDeleteView.as_view(), name='director_delete'),
    path('<str:name>/add_movie/<int:movie_pk>/', views.add_movie_to_director, name='add_movie_to_director'),
    path('<str:director_name>/remove_movie/<int:movie_pk>/', views.remove_movie_from_director, name='remove_movie_from_director'),
]