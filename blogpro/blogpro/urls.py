"""
URL configuration for blogpro project.

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.urls.conf import include
from django.conf import settings
from django.conf.urls.static import static

from django.contrib import admin
from django.urls import path
from proapp import views
urlpatterns = [
    path('admin/', admin.site.urls),
    path('',views.main),
   
    path('blog',views.blog),
    path('login',views.logi),
    path('home',views.home),
    path('signup',views.signup),
    path('main',views.showdata),
    path('adminlogin',views.adminlogin),
    path('admin',views.admin),
    path('contact',views.contact),
    path('delete/<int:data>',views.dlt),
    path('edit/<int:data>',views.edit),
    path('update/<int:data>',views.update),
    path('dashboard',views.dashboard),
    path('about',views.about),
    path('message',views.message),
    path('mail',views.mail),
    path('report/<int:id>',views.report),
    path('report/report/<int:id>',views.report),
    path('logout',views.logo),
    path('adminreport',views.adminreport),
    path('disclaimer',views.disclaimer),
    path('profile',views.profile)
]
if settings.DEBUG:urlpatterns +=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)
