from django.shortcuts import render, get_object_or_404
from django.http import HttpResponse
from .models import Question, Answer
from .utils import paginate

# Create your views here.
def test(request, *args, **kwargs):
    return HttpResponse('OK')

def main(request, *args, **kwargs):
    if request.GET.get('page') == None:
        return test(request)
    last = Question.objects.order_by('-id')
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

<<<<<<< HEAD
def question(request, pk):
    qst = get_object_or_404(Question, id=pk)
=======
def question(request, id):
    qst = get_object_or_404(Question, id=id)
>>>>>>> 06900e6873d8d7b256c0c470d5acfc55446d130c
    return render(request, 'question.html', {
        'question': qst,
        'answers': qst.answer_set.all()
    })
