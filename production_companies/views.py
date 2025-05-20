from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from django.urls import reverse_lazy
from.models import ProductionCompany
from movies.models import Movie
from django.shortcuts import render, redirect
from django.contrib import messages

class CompanyListView(ListView):
    model = ProductionCompany
    template_name = 'production_companies/company_list.html'
    context_object_name = 'companies'
    paginate_by = 10

class CompanyCreateView(CreateView):
    model = ProductionCompany
    fields = ['name', 'city']
    template_name = 'production_companies/company_form.html'
    success_url = reverse_lazy('production_companies:company_list')

class CompanyUpdateView(UpdateView):
    model = ProductionCompany
    fields = ['name', 'city']
    template_name = 'production_companies/company_form.html'
    success_url = reverse_lazy('production_companies:company_list')

class CompanyDeleteView(DeleteView):
    model = ProductionCompany
    template_name = 'production_companies/company_confirm_delete.html'
    success_url = reverse_lazy('production_companies:company_list')

    def delete(self, request, *args, **kwargs):
        self.object = self.get_object()
        if self.object.movies.exists():  # 检查公司是否关联了电影
            messages.error(request, "该公司关联了电影，无法删除。请先处理关联的电影。")
            return redirect('production_companies:company_detail', pk=self.object.pk)
        return super().delete(request, *args, **kwargs)

class CompanyDetailView(DetailView):
    model = ProductionCompany
    template_name = 'production_companies/company_detail.html'
    context_object_name = 'company'

    def get_context_data(self, **kwargs):
        context = super().get_context_data(**kwargs)
        context['movies'] = Movie.objects.filter(production_company=self.object)
        return context

def search_companies(request):
    query = request.GET.get('query', '')
    companies = ProductionCompany.objects.filter(name__icontains=query)
    return render(request, 'production_companies/company_list.html', {
        'companies': companies,
        'query': query
    })