from django.urls import path
from. import views

app_name = 'production_companies'

urlpatterns = [
    path('', views.CompanyListView.as_view(), name='company_list'),
    path('add/', views.CompanyCreateView.as_view(), name='company_add'),
    path('<int:pk>/', views.CompanyDetailView.as_view(), name='company_detail'),
    path('<int:pk>/edit/', views.CompanyUpdateView.as_view(), name='company_edit'),
    path('<int:pk>/delete/', views.CompanyDeleteView.as_view(), name='company_delete'),
    path('search/', views.search_companies, name='company_search'),
]