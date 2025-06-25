from django.shortcuts import render,HttpResponse,redirect
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.models import User
from proapp.models import Uploaddata
from proapp.models import Signup
from proapp.models import Form
from django.core.mail import send_mail
from proapp.models import Report
# Create your views here.
def  main(request):
    data=Uploaddata.objects.all()
    return render(request,"main.html",{"data":data})



def logi(request):
    if request.method=="POST":
        
        username=request.POST["username"]
        password=request.POST["password"]
        user  = authenticate(username = username,password = password)

        if user is not None:
            login(request,user)
            return redirect("/home")
        else:
            msg = "User not found"
            return render(request,"login.html",{"msg":msg})
    else:
        return render(request,"login.html")    

def home(request):
    data=Uploaddata.objects.all()
    return render(request,"home.html",{"data":data}) 

def signup(request):
      if request.method=="POST":
        first_name=request.POST["firstname"]
        last_name=request.POST["lastname"]
        email=request.POST["email"]
        username=request.POST["username"]
        password=request.POST["password"]
        confirmpassword=request.POST["confirmpassword"]
        ch = User.objects.filter(username=username)
        if ch:
            msg = "Username already exist..."
            return render(request,"signup.html",{"msg":msg})
        else:
            if password==confirmpassword:
                kaur=User.objects.create_user(first_name=first_name,last_name=last_name,email=email,username=username,password=password)
                kaur.save()
                return redirect("/home")
            else:
                msg = "password not matched"
                return render(request,"signup.html",{"msg":msg})
      else:
         return render(request,"signup.html")


def blog(request):
    if request.method=="POST":
        title=request.POST["title"]
        description=request.POST["description"]
        publish=request.POST["publish"]
        category=request.POST["category"]
        image=request.FILES["image"]
        username=request.POST["username"]
        data= Uploaddata(title=title,description=description,publish=publish,category=category,image=image,username=username)
        data.save()
        msg="Blog Added Successfully"
        return render(request,"blog.html",{"msg":msg})
    else:
        return render(request,"blog.html")
    
def showdata(request):
    data=Uploaddata.objects.all()
    print(data)
    return render(request,"main.html",{"data":data})

def contact(request):
    if request.method=="POST":
        name=request.POST["name"]
        email=request.POST["email"]
        contact=request.POST["contact"]
        message=request.POST["message"]
        subject="Greetings from Blogpro !"
        msg="Thanks for your feedback"
        to=email
        req=send_mail(subject,msg,"dhaliwalkulwinder1977@gmail.com",[to])
        fdata=Form(name=name,email=email,contact=contact,message=message)
        fdata.save()
        msg="Message sent"
        return render(request,"contactus.html",{"msg":msg})
    else:
        return render(request,"contactus.html")

def admin(request):
    data=Uploaddata.objects.all()
    print(data)
    return render(request,"admin.html",{"data":data})

rg=["gurleen02","rohit02"]
def adminlogin(request):
    if request.method=="POST":
        admin=request.POST["admin"]
        if admin in rg:
            return redirect("/dashboard")
        else:
            msg="user not found"
            return render(request,"adminlogin.html",{"msg":msg})
    else:
      return render(request,"adminlogin.html")

def dlt(request,data):
    kaddu=Uploaddata.objects.get(id=data)
    kaddu.delete()
    return redirect("/admin")

def edit(request,data):
    kaddu=Uploaddata.objects.get(id=data)
    return render(request,"edit.html",{"data":kaddu})

def update(request,data):
    kaddu=Uploaddata.objects.get(id=data)
    if request.method=="POST":
        kaddu.title=request.POST["title"]
        kaddu.description=request.POST["description"]
        kaddu.publish=request.POST["publish"]
        kaddu.category=request.POST["category"]
        kaddu.image=request.FILES["image"]
        kaddu.username=request.POST["username"]
        kaddu.save()
        return redirect("/admin")
    
def dashboard(request):
    data=Uploaddata.objects.all()
    val=User.objects.all()
    varb={"data":len(data),"val":len(val)}
    return render(request,"dashboard.html",varb)

def about(request):
    return render(request,"aboutus.html")

def message(request):
    data=Form.objects.all()
    return render(request,"message.html",{"data":data})

def mail(request):
    subject="Welcome"
    msg="We've received your mail"
    to="roturohit1@gmail.com"
    req=send_mail(subject,msg,"dhaliwalkulwinder1977@gmail.com",[to])
    if req:
      return HttpResponse("sent")
    else:
        return HttpResponse("not sent")
   

def report(request,id):
    data=Uploaddata.objects.get(id=id)
    if request.method=="POST":
       username=request.POST["username"] 
       type=request.POST["type"]
       message=request.POST["message"]
       blogid=request.POST["blogid"]
       email=request.POST["email"]
       subject="Greetings from Blogpro !"
       msg="Thanks for reporting. We will work on it."
       to=email
       req=send_mail(subject,msg,"dhaliwalkulwinder1977@gmail.com",[to])
       rg=Report(username=username,type=type,message=message,blogid=blogid,email=email)
       rg.save()
       return redirect("/home")
    else:
       return render(request,"report.html",{"id":id})

def logo(request):
    logout(request)
    return redirect("/login")

def adminreport(request):
    data=Report.objects.all()
    return render(request,"adminreport.html",{"data":data})

def disclaimer(request):
    return render(request,"disclaimer.html")

def profile(request):
    return render(request,"profile.html")