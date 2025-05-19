from django.views.generic import ListView, DetailView
from .models import MovieGenre
from movies.models import Movie

class GenreListView(ListView):
    model = MovieGenre
    template_name = 'genres/genre_list.html'
    context_object_name = 'genres'
    ordering = ['genre_name']  # 按类型名称排序

class GenreDetailView(DetailView):
    model = MovieGenre
    template_name = 'genres/genre_detail.html'
    context_object_name = 'genre'
    
    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        # 获取该类型关联的所有电影（通过多对多关系）
        context['movies'] = self.object.movies.all()
        return context