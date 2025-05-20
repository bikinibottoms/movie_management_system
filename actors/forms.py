from django import forms
from movies.models import Movie
from.models import Actor

class ActorMovieForm(forms.Form):
    movie = forms.ModelChoiceField(queryset=Movie.objects.all(), label='选择电影')
    role_name = forms.CharField(max_length=255, label='角色名称')
    
class ActorForm(forms.ModelForm):
    class Meta:
        model = Actor
        fields = ['name', 'birth_date']
        widgets = {
            'birth_date': forms.DateInput(attrs={'type': 'date'}),
        }