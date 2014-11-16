*** Settings ***
Library    Selenium2Library


*** Variables ***
${USER}     TestUser1
${PWD}      T3stPwd1
${HOST}     localhost
${PORT}     8888
${DELAY}    0
${WLCM_MSG}     Ekho - Log in
${MAIN_WLCM_MSG}     Welcome to Ekho
${LOGIN URL}        http://${HOST}:${PORT}/login
@{applications}    app1    app2    app3    app4
${BROWSER}    ff

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    #Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    ${WLCM_MSG}
    Page should contain TextField	username
    Page should contain Element	password
    Page should contain button	Log In


User Fills Credentials
	Input Text	username	${USER}
	Input Text	password	${PWD}
	
User Submits Login Credentials
	Submit Credentials
	
Main page should be opened
    Title Should Be    ${MAIN_WLCM_MSG}

Submit Credentials
    #Submit Form     login-form
    Click button    Log In