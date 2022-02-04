# STEPIK_course_WEB-TECHNOLOGIES
study project from mail.ru
# First project -
	- create git repository on github.com
	- create folders
	- create nginx configuration file
	- create shell script for deploying
I did it on the first try (with fast bug fixing)

# Second project - 
	- create simple wsgi app (print query strings)
	- launch gunicorn
	- tests
	- deploy
Again on the first try, because i'm testing it locally before deploying it to a test server

# Third project - 
	- install django
	- create app qa with views test code
	- configure django settings and urls
	- launch second gunicorn
	- change nginx config
	- tests
	- deploy (resolve problems with old versions of the framework)
And again on the first try, but problems with old versions of py, django, gunicorn is a true real headache

# Fourth project - 
	- deploy mysql (FAILED, i used default sqlite3)
	- Create models
	- Create custom manager
	- make db migrations
For the second try, i failed with deploy mysql. Django had many syntach SQL errors on db migration. But my localy server execute it without any errors. Version conflict? Old mysql on test server? I don't no. Finish test i could only with sqlite3 server. 
