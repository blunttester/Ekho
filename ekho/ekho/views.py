from django.contrib.auth.decorators import login_required
from django.shortcuts import render_to_response, RequestContext, render
# Create your views here.



@login_required(login_url='login/') #if not logged in redirect to /
def home(request):        
    return render('index.html', context_instance=RequestContext(request))