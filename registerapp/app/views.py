from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.urls import reverse_lazy
from django.views import generic
from .models import CustomUser
from django.contrib import messages

def signup(request):
    if request.method == 'POST':
        form = UserCreationForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'Account created successfully. You can now login.')
            return redirect('login')  # Redirect to the login page upon successful signup
        else:
            messages.error(request, 'Error creating account.')
    else:
        form = UserCreationForm()
    return render(request, 'signup.html', {'form': form})

def custom_login(request):
    if request.method == 'POST':
        username = request.POST.get('username')
        password = request.POST.get('password')
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            return redirect('user_list')  # Redirect to user list page
        else:
            messages.error(request, 'Invalid username or password.')
            return redirect('login')  # Redirect back to login page with error message
    else:
        return render(request, 'login.html')

        
def user_list(request):
    users = User.objects.all()
    return render(request, 'user_list.html', {'users': users})
