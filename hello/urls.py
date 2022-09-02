from django.urls import path  
from . import views  
# URL Configs  
urlpatterns = [ path("hello/", views.say_hello, name="say_hello"), ]  