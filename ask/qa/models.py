from django.db import models
from datetime import date
from django.contrib.auth.models import User



class Question(models.Model):
    title = models.CharField(max_length=255)
    text = models.TextField()
    addet_at = models.DateTimeField(auto_now_add=True)
    rating = models.IntegerInt(default=0)

    author = models.ForeignKey(User, null=True, on_delete=models.SET_NULL)
    likes = models.ManyToManyField(User)

    def __unicode__(self):
        return self.title


class QuestionManager(models.Manager):
    def new(self):
        return super(QuestionManager, self).get_queryset().order_by('-added_at')
    def popular(self):
        return super(QuestionManager, self).get_queryset().annotate(models.Count('likes')).order_by('likes__count')


class Answer(models.Model):
    text = models.TextField()
    addet_at = models.DateTimeField(auto_now_add=True)

    question = models.ForeignKey(Question, null=True, on_delete=models.SET_NULL)
    author = models.ForeignKey(User, null=True, on_delete=models.SET_NULL)

# Create your models here.
