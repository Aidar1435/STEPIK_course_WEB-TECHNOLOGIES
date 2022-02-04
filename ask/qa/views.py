from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from .models import Question, Answer
from .utils import paginate

# Create your views here.
def test(request, *args, **kwargs):
    return HttpResponse('OK')

def main(request, *args, **kwargs):
    last = Question.objects.new()
    page = paginate(request,last)
    return render(request, 'main.html', {
        'questions': page.object_list,
        'page': page,
    })

def popular(request):
    pplr = Question.objects.popular()
    page = paginate(request, pplr)
    return render(request, 'main.html', {
        'questions': page.object_list,
        'page': page,
    })

def question(request, id):
    qst = get_object_or_404(Question, pk=id)
    return render(request, 'question.html', {
        'question': qst,
    })
