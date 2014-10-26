'''
Created on 26.10.2014

@author: jan
'''

class MyAccount(object):
    '''
    classdocs
    '''


    def __init__(self):
        '''
        Constructor
        '''

    def myName(self):
        '''
        Name of the account
        '''

    def myConnectionType(self,myType):
        '''
        Connection type
        Supported types: IMAP,POP3
        '''

    def mySecurityState(self,mySecurity):
        '''
        Should we use security
        And if yes, TLS, SSL
        '''

    def myConnectionPort(self,myPort):
        '''
        Port -number to be used
        Defaults or specified by user
        '''

    def myFetchServer(self,myServer):
        '''
        Accounts mail-host
        '''

    def mySMTPServer(self,mySMTP):
        '''
        SMTP -host
        '''

    def myUserName(self,myUserName):
        '''
        Username for the account
        '''
    def myPwd(self,myPwd):
        '''
        Password
        Needs to be masked when saved
        '''

    def myAccountState(self,State):
        '''
        State of the account
        Active/Passive
        '''

    def myAccountStatus(self, myStatus):
        '''
        Status of the account
        Master or Slave
        '''