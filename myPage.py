'''
Created on Nov 23, 2014

@author: janmatilainen
'''
from twisted.internet import reactor
from twisted.web.server import Site
from twisted.web.resource import Resource

class MyPage(Resource):
    
    isLeaf = True
    def render_GET(self, request):
        myPage = twisted.web.template('templates/index-1.xml')
        print str(myPage)
        return myPage
 
resource = MyPage()
factory = Site(resource)
reactor.listenTCP(8880, factory)
reactor.run

        
