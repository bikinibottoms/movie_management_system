from django import forms
from .models import Movie, MovieGenre

class MovieForm(forms.ModelForm):
    genres = forms.ModelMultipleChoiceField(
        queryset=MovieGenre.objects.all(),
        widget=forms.CheckboxSelectMultiple,
        label='所属类型'
    )

    class Meta:
        model = Movie
        fields = ['name', 'length', 'plot_summary', 'production_company','release_year', 'genres']
        labels = {
            'name': '电影名称',
            'length': '时长（分钟）',
            'plot_summary': '剧情简介',
            'production_company': '制作公司',
           'release_year': '上映年份',
        }