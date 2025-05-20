from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from django.shortcuts import get_object_or_404, redirect
from.models import Director
from movies.models import Movie, MovieDirector
from.forms import DirectorForm

class DirectorListView(ListView):
    model = Director
    template_name = 'directors/director_list.html'
    context_object_name = 'directors'

    def get_queryset(self):
        queryset = super().get_queryset()
        search_query = self.request.GET.get('search_query')
        if search_query:
            # 不区分大小写的包含搜索
            queryset = queryset.filter(name__icontains=search_query)
        return queryset

class DirectorCreateView(CreateView):
    model = Director
    form_class = DirectorForm
    template_name = 'directors/director_form.html'
    success_url = reverse_lazy('directors:director_list')

    def form_valid(self, form):
        response = super().form_valid(form)
        
        # 清除旧关联（创建时为空，但更新时需要）
        MovieDirector.objects.filter(director=self.object).delete()
        
        # 创建新关联
        for movie in form.cleaned_data['movies']:
            MovieDirector.objects.create(director=self.object, movie=movie)
            
        return response

class DirectorDeleteView(DeleteView):
    model = Director
    template_name = 'directors/director_confirm_delete.html'
    success_url = reverse_lazy('directors:director_list')
    slug_field = 'name'  # 添加这行
    slug_url_kwarg = 'name'  # 添加这行

class DirectorUpdateView(UpdateView):
    model = Director
    form_class = DirectorForm
    template_name = 'directors/director_form.html'
    success_url = reverse_lazy('directors:director_list')
    slug_field = 'name'
    slug_url_kwarg = 'name'

    def form_valid(self, form):
        response = super().form_valid(form)
        
        # 清除旧关联
        MovieDirector.objects.filter(director=self.object).delete()
        
        # 创建新关联
        for movie in form.cleaned_data['movies']:
            MovieDirector.objects.create(director=self.object, movie=movie)
            
        return response
    
class DirectorDetailView(DetailView):
    model = Director
    template_name = 'directors/director_detail.html'
    context_object_name = 'director'
    slug_field = 'name'
    slug_url_kwarg = 'name'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        director = self.object
        # 获取导演执导的电影
        context['movies'] = director.movies.all()
        return context
    
    
def add_movie_to_director(request, director_name, movie_pk):
    director = get_object_or_404(Director, name=director_name)
    movie = get_object_or_404(Movie, pk=movie_pk)
    
    # 检查关系是否已存在
    if not MovieDirector.objects.filter(director=director, movie=movie).exists():
        MovieDirector.objects.create(director=director, movie=movie)
    
    return redirect('directors:director_detail', name=director_name)

def remove_movie_from_director(request, director_name, movie_pk):  # 参数名改为 director_name
    director = get_object_or_404(Director, name=director_name)
    movie = get_object_or_404(Movie, pk=movie_pk)
    relation = get_object_or_404(MovieDirector, director=director, movie=movie)
    relation.delete()
    return redirect('directors:director_detail', name=director_name)