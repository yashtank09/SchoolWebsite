from django.contrib import admin
from django.urls import path
from profileView import views

# URL Patterns list routes URLs to views that returns HTMl pages or redirect Path `name`
urlpatterns = [
    path('', views.indexing.homepage, name='homepage'),  # Index page route
    path('logout', views.indexing.userlogout, name='logout'),  # For logout
    path('login', views.StudentMetaData.login, name='login'),  # Student Login route
    path('Teacherlogin', views.TeacherMetaData.TeacherLogin, name='Teacherlogin'),  # Teacher Login route
    path('login/StudentDash', views.StudentMetaData.StudentDash, name='StudentDash'),  # Student Dashboard route
    path('Teacherlogin/TeacherDash', views.TeacherMetaData.TeacherDash, name='TeacherDash'),  # Teacher Dashboard route
    path('StudentRegistration', views.StudentMetaData.StudentRegi, name='StudentRegi'),  # Student Registration route
    path('TeacherRegistration', views.TeacherMetaData.TeacherRegi, name='TeacherRegi')  # Teacher Registration route
]
