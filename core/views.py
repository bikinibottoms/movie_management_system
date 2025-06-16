from django.shortcuts import render
from movies.models import Movie
from actors.models import Actor
from directors.models import Director
from genres.models import MovieGenre
from production_companies.models import ProductionCompany

def home(request):
    """系统首页视图：展示导航和数据统计"""
    # 数据统计
    stats = {
        'movie_count': Movie.objects.count(),
        'actor_count': Actor.objects.count(),
        'director_count': Director.objects.count(),
        'genre_count': MovieGenre.objects.count(),
        'company_count': ProductionCompany.objects.count(),
    }
    # 最新添加的内容（各取前5条）
    latest_movies = Movie.objects.order_by('-id')[:5]
    latest_actors = Actor.objects.order_by('-name')[:5]
    latest_directors = Director.objects.order_by('-name')[:5]
    return render(request, 'core/home.html', {
        'title': '电影管理系统 - 首页',
        'stats': stats,
        'latest_movies': latest_movies,
        'latest_actors': latest_actors,
        'latest_directors': latest_directors,
    })