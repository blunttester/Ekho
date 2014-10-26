*** Settings ***
Library    Selenium2Library
Suite Setup     Browser Should Be Closed
Suite Teardown     Browser Should Be Closed

*** Keywords ***
Browser Should Be Closed
    Close Browser