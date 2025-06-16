from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from django.shortcuts import get_object_or_404, render, redirect
from.models import Actor
from movies.models import Movie, MovieRole
from.forms import ActorForm
from django.contrib import messages

class ActorListView(ListView):
    model = Actor
    template_name = 'actors/actor_list.html'
    context_object_name = 'actors'
    

    def get_queryset(self):
        queryset = super().get_queryset()
        search_query = self.request.GET.get('search_query')
        if search_query:
            queryset = queryset.filter(name__icontains=search_query)
        return queryset

class ActorCreateView(CreateView):
    form_class = ActorForm  # 使用自定义表单
    template_name = 'actors/actor_form.html'
    success_url = reverse_lazy('actors:actor_list')

class ActorUpdateView(UpdateView):
    form_class = ActorForm  # 使用自定义表单
    template_name = 'actors/actor_form.html'
    success_url = reverse_lazy('actors:actor_list')

    def get_object(self, queryset=None):
        name = self.kwargs.get('name')
        return get_object_or_404(Actor, name=name)
class ActorDeleteView(DeleteView):
    model = Actor
    template_name = 'actors/actor_confirm_delete.html'
    success_url = reverse_lazy('actors:actor_list')

    def get_object(self, queryset=None):
        name = self.kwargs.get('name')
        return get_object_or_404(Actor, name=name)

class ActorDetailView(DetailView):
    model = Actor
    template_name = 'actors/actor_detail.html'
    context_object_name = 'actor'

    # 重写 get_object 方法，通过 name 获取对象
    def get_object(self, queryset=None):
        name = self.kwargs.get('name')
        return get_object_or_404(Actor, name=name)

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        actor = self.object
        context['movie_roles'] = MovieRole.objects.filter(actor=actor)
        return context

def add_movie_to_actor(request, actor_name):
    actor = get_object_or_404(Actor, name=actor_name)
    
    if request.method == 'POST':
        movie_pk = request.POST.get('movie')
        role_name = request.POST.get('role_name')
        
        if movie_pk and role_name:
            movie = get_object_or_404(Movie, pk=movie_pk)
            
            # 检查是否已存在相同组合（避免重复）
            existing_role = MovieRole.objects.filter(
                actor=actor,
                movie=movie,
                role_name=role_name
            ).exists()
            
            if not existing_role:
                # 创建新角色关联
                new_role = MovieRole.objects.create(
                    actor=actor,
                    movie=movie,
                    role_name=role_name
                )
                messages.success(request, f"已成功添加角色 '{role_name}'")
            else:
                messages.warning(request, "该角色已存在")
            
            return redirect('actors:actor_detail', name=actor_name)
    
    movies = Movie.objects.all()
    return render(request, 'actors/add_movie_to_actor.html', {
        'actor': actor,
        'movies': movies,
    })
    
def delete_actor_role(request, role_id):
    # 获取要删除的角色对象
    role = get_object_or_404(MovieRole, id=role_id)
    actor_name = role.actor.name  # 获取演员姓名用于重定向
    role.delete()  # 删除角色记录
    return redirect('actors:actor_detail', name=actor_name)  # 重定向回演员详情页