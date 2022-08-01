import random
from django.shortcuts import render, redirect
from .models import student_registration, teacher_registration


# Create your views here.

# index page
class indexing:
    # Index page
    def homepage(req):
        return render(req, 'index.html')

    # Logout { destroying Session object }
    def userlogout(req):
        try:
            del req.session['regid']  # Deleting Sessions
            del req.session['trid']
        except KeyError:
            pass
        return redirect('/')


class StudentMetaData:
    # Student Registration
    def StudentRegi(req):
        # Generating random numbers for Register ID
        RegistrationID = random.randint(100000, 999999)

        if req.method == 'POST':
            # fetching values from HTML Form
            FirstName = req.POST['firstName']
            LastName = req.POST['lastName']
            RollNumber = req.POST['RollNumber']
            Standard = req.POST['Standard']
            Class = req.POST['classSelect']
            Mobile = req.POST['mobile']
            Password = req.POST['password']
            ConfPassword = req.POST['password_confirm']

            # if all values from HTML form are available or not
            if FirstName and LastName and RollNumber and Standard and Class and Mobile and Password and ConfPassword:
                if Password == ConfPassword:
                    # Initialise Database object
                    StudRecordSave = student_registration()

                    # Inserting Records into Database Table
                    StudRecordSave.regiid = RegistrationID
                    StudRecordSave.FirstName = FirstName
                    StudRecordSave.LastName = LastName
                    StudRecordSave.RollNumber = RollNumber
                    StudRecordSave.Standard = Standard
                    StudRecordSave.ClassSec = Class
                    StudRecordSave.mobile = Mobile
                    StudRecordSave.password = Password

                    # Saving records into database
                    StudRecordSave.save()
                    return redirect('/login')
                else:
                    # if password not marcht pass this message to page
                    notmatch = {'passnotmatch': 'Passwords are not match'}
                    return render(req, 'Student_registration.html', notmatch)
        else:
            # if request is GET
            return render(req, 'Student_registration.html')

    # Student Login
    def login(req):
        # Checking request is equal to POST, redirect to Login page
        if req.method == 'POST':
            mobile = req.POST.get('mobile')
            password = req.POST.get('loginpass')
            StudAuth = student_registration.objects.get(mobile=mobile, password=password)
            # if credentials for login are satisfied, Redirect to Student Dashboard else: Again login page
            if StudAuth:
                # Creating Session Object
                req.session['regid'] = StudAuth.regiid
                return redirect('StudentDash')
            else:
                return render(req, 'login.html')
        return render(req, 'login.html')

    # Student Dashboard
    @staticmethod
    def StudentDash(req):
        # fetching session variable/ID
        getstudentid = req.session.get('regid')
        # if session key is valid then show Student data
        if req.session.has_key('regid'):
            Students = student_registration.objects.get(regiid=getstudentid)
            return render(req, 'StudentDash.html',
                          {'StudentData': Students})  # Forwarding Student Dashboard with database object
        else:
            return redirect('login')
        return render(req, 'StudentDash.html')


# Class for Teacher Data
class TeacherMetaData:
    # Teacher Registration
    def TeacherRegi(req):
        RegistrationID = random.randint(100000, 999999)
        if req.method == 'POST':
            FirstName = req.POST['firstName']
            LastName = req.POST['lastName']
            SubjectThought = req.POST['SubjectThought']
            ClassThought = req.POST['classThoought']
            contactNumber = req.POST['contactNumber']
            PasswordTech = req.POST['password']
            ConfPasswordTech = req.POST['password_confirm']

            if FirstName and LastName and SubjectThought and ClassThought and contactNumber and PasswordTech and ConfPasswordTech:
                if PasswordTech == ConfPasswordTech:
                    # Initialise Database object
                    TeacherRecordSave = teacher_registration()

                    TeacherRecordSave.regiid = RegistrationID
                    TeacherRecordSave.FirstName = FirstName
                    TeacherRecordSave.LastName = LastName
                    TeacherRecordSave.Subject = SubjectThought
                    TeacherRecordSave.classThought = ClassThought
                    TeacherRecordSave.contactNumb = contactNumber
                    TeacherRecordSave.password = PasswordTech

                    TeacherRecordSave.save()
                    return redirect('/Teacherlogin')
            else:
                notmatch = {'passnotmatch': 'Passwords are not match'}
                return render(req, 'Teacher_registration.html', notmatch)
        else:
            return render(req, 'Teacher_registration.html')

    # Teacher Login
    def TeacherLogin(req):
        if req.method == 'POST':
            # Fetching HTML form datas
            mobile = req.POST.get('TeacherContact')
            password = req.POST.get('loginpass')
            # Checking values of Form data and database data
            TechAuth = teacher_registration.objects.get(contactNumb=mobile, password=password)
            if TechAuth:
                # Generating session Key variable
                req.session['trid'] = TechAuth.regiid
                return redirect('TeacherDash')  # Redirect to Teacher Dashboard
            else:
                return render(req, 'Teacherlogin.html')
        return render(req, 'Teacherlogin.html')

    # Teacher Dashboard
    def TeacherDash(req):
        # Validating session key variable and show teacher's data else redirect to Teacher Login
        getTeacherID = req.session.get('trid')
        if req.session.has_key('trid'):
            Teachers = teacher_registration.objects.get(regiid=getTeacherID)
            return render(req, 'TeacherDash.html', {'TeacherData': Teachers})
        else:
            return redirect('Teacherlogin')
        return render(req, 'TeacherDash.html')
