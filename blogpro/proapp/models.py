from django.db import models

# Create your models here.

class Uploaddata(models.Model):
     title=models.CharField(max_length=100)
     description=models.CharField(max_length=200)
     publish=models.CharField(max_length=50)
     category=models.CharField(max_length=20)
     image=models.ImageField(upload_to="blogpro")
     username=models.CharField(max_length=100)

     class Meta:
          db_table="Uploaddata"

class Signup(models.Model):
    firstname=models.CharField(max_length=100)
    lastname=models.CharField(max_length=100)
    email=models.EmailField()
    password=models.CharField(max_length=60)
    confirmpassword=models.CharField(max_length=60)

    class Meta:
        db_table="Signup"

class Form(models.Model):
     name=models.CharField(max_length=100)
     email=models.EmailField()
     contact=models.CharField(max_length=13)
     message=models.CharField(max_length=300)

     class Meta:
          db_table="Form"

class Report(models.Model):
     username=models.CharField(max_length=100)
     type=models.CharField(max_length=50)
     message=models.CharField(max_length=200)
     blogid=models.CharField(max_length=10)
     email=models.EmailField()
     
     class Meta:
          db_table="Report"
