from django.db import models


# Create your models here.
class student_registration(models.Model):
    regiid = models.IntegerField(primary_key=True)
    personis = models.CharField(max_length=15, default='Student')
    FirstName = models.CharField(max_length=30, null=False)
    LastName = models.CharField(max_length=30, null=False)
    RollNumber = models.IntegerField(null=False)
    Standard = models.IntegerField(null=False)
    ClassSec = models.CharField(max_length=8, null=False)
    mobile = models.BigIntegerField(null=False)
    password = models.CharField(max_length=24, null=False)


class teacher_registration(models.Model):
    regiid = models.IntegerField(primary_key=True)
    personis = models.CharField(max_length=15, default='Teacher')
    FirstName = models.CharField(max_length=30, null=False)
    LastName = models.CharField(max_length=30, null=False)
    Subject = models.CharField(max_length=20, null=False)
    classThought = models.CharField(max_length=10, null=False)
    contactNumb = models.BigIntegerField(null=False)
    password = models.CharField(max_length=24, null=False)
