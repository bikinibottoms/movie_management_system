from django.urls import path
from . import views

app_name = 'genres'  # 命名空间，避免 URL 冲突

urlpatterns = [
    # 类型列表页
    path('', views.GenreListView.as_view(), name='genre_list'),
    # 类型详情页（含该类型的所有电影）
    path('<str:pk>/', views.GenreDetailView.as_view(), name='genre_detail'),
]