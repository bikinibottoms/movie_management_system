from django.urls import path
from. import views

app_name = 'actors'

urlpatterns = [
    path('', views.ActorListView.as_view(), name='actor_list'),
    path('add/', views.ActorCreateView.as_view(), name='actor_add'),
    path('<str:name>/', views.ActorDetailView.as_view(), name='actor_detail'),
    path('<str:name>/edit/', views.ActorUpdateView.as_view(), name='actor_edit'),
    path('<str:name>/delete/', views.ActorDeleteView.as_view(), name='actor_delete'),
    path('<str:actor_name>/add_movie/', views.add_movie_to_actor, name='add_movie_to_actor'),
    path('role/<int:role_id>/delete/', views.delete_actor_role, name='delete_role'),
]