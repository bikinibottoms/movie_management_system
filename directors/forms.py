from django import forms
from.models import Director
from movies.models import Movie

class DirectorForm(forms.ModelForm):
    movies = forms.ModelMultipleChoiceField(
        queryset=Movie.objects.all(),
        widget=forms.CheckboxSelectMultiple,  # 恢复多选框
        label='执导的电影',
        required=False
    )

    class Meta:
        model = Director
        fields = ['name', 'birth_date', 'movies']
        widgets = {
            'birth_date': forms.DateInput(attrs={'type': 'date'}),
        }