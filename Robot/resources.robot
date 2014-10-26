*** Settings ***
Library    Selenium2Library
##Library    chromedriver

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
${BROWSER}    Firefox

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    #Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    ${WLCM_MSG}
    #Page should contain TextField User
    #Page should contain TextField Password
    #Page should contain Login button

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

User should be able to log in
    Main page should be open

Main page should be open
    Title Should Be    ${MAIN_WLCM_MSG}

Submit Credentials
    Submit Form     login-form
    #Click button    button