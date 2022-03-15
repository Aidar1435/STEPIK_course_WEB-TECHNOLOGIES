sudo /etc/init.d/mysql start
mysql -uroot -e "create database Aidar;"
~/web/ask/manage.py makemigrations
~/web/ask/manage.py migrate

DATABASES = {

    'default': {

        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'Aidar',
        'USER': 'box',
    }
}

from django.contrib.auth.models import User

class QuestionManager(models.Manager):
  def new(self):
    return self.order_by('-added_at')
  def popular(self):
    return self.order_by('-rating')
    
    added_at = models.DateTimeField(auto_now_add=True)
    
    rating = models.IntegerField(default=0)
    
    likes = models.ManyToManyField(User, related_name='question_like_user')
