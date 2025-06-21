# movie_management_system/movies/views.py
from django.shortcuts import render, redirect, get_object_or_404
from django.views.generic import ListView, DetailView
from .models import Movie, MovieDirector, MovieActorRelation, MovieNarrator, MovieGenre 
from .forms import MovieForm
from django.urls import reverse_lazy
from django.views.generic.edit import CreateView, UpdateView, DeleteView

class MovieListView(ListView):
    model = Movie
    template_name = 'movies/movie_list.html'
    context_object_name = 'movies'
    ordering = ['name']

from django.shortcuts import get_object_or_404
from django.views.generic import DetailView
from.models import Movie, MovieRole  # 导入 MovieRole

class MovieDetailView(DetailView):
    model = Movie
    template_name = 'movies/movie_detail.html'
    context_object_name = 'movie'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        movie = self.object
        
        # 获取电影的演员及其角色
        movie_roles = MovieRole.objects.filter(movie=movie)
        
        # 构建包含演员和角色的上下文
        context['actors'] = []
        for role in movie_roles:
            context['actors'].append({
                'actor': role.actor,
                'role_name': role.role_name
            })
            
        # 获取其他关联数据（导演、旁白、类型）
        context['directors'] = movie.directors.all()
        context['narrators'] = movie.movienarrator_set.all()
        context['genres'] = movie.genres.all()
        
        return context

class MovieCreateView(CreateView):
    model = Movie
    form_class = MovieForm
    template_name = 'movies/movie_form.html'
    success_url = reverse_lazy('movies:movie_list')

class MovieUpdateView(UpdateView):
    model = Movie
    form_class = MovieForm
    template_name = 'movies/movie_form.html'
    success_url = reverse_lazy('movies:movie_list')

class MovieDeleteView(DeleteView):
    model = Movie
    template_name = 'movies/movie_confirm_delete.html'
    success_url = reverse_lazy('movies:movie_list')

from.models import Movie, MovieDirector, MovieActorRelation, MovieNarrator, MovieGenreRelation  # 导入中间表

def search_movie_info(request):
    if request.method == 'POST':
        movie_name = request.POST.get('movie_name')
        try:
            movie = Movie.objects.get(name=movie_name)
            directors = [md.director for md in MovieDirector.objects.filter(movie=movie)]
            actors = [mar.actor for mar in MovieActorRelation.objects.filter(movie=movie)]
            narrators = [mn.actor for mn in MovieNarrator.objects.filter(movie=movie)]
            genre_relations = MovieGenreRelation.objects.filter(movie=movie)
            genres = [relation.genre for relation in genre_relations]
            
            return render(request,'movies/movie_search_result.html', {
                'movie': movie,
                'directors': directors,
                'actors': actors,
                'narrators': narrators,
                'genres': genres,
            })
        except Movie.DoesNotExist:
            return render(request,'movies/movie_search_result.html', {'error': '未找到该电影'})
    return render(request,'movies/movie_search.html')