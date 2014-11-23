from django.shortcuts import render

# Create your views here.

from django.shortcuts import render_to_response, RequestContext, render
from django.contrib.auth import authenticate, login
from django.http.response import HttpResponseRedirect
from django.contrib.auth.decorators import login_required
from django.core.urlresolvers import reverse

def login_user(request):
    state = "Please log in below..."
    username = password = ''
    if request.POST:
        username = request.POST.get('username')
        password = request.POST.get('password')

        user = authenticate(username=username, password=password)
        if user is not None:
            if user.is_active:
                login(request, user)
                state = "You're successfully logged in!"
                #return HttpResponseRedirect('home')
            else:
                state = "Your account is not active, please contact the site admin."
        else:
            state = "Your username and/or password were incorrect."

    return render_to_response('login.html',{'state':state, 'username': username})
    
    

@login_required(login_url='/') #if not logged in redirect to /
def home(request):        
    return render('index.html', context_instance=RequestContext(request))