*** Settings ***
Documentation     Start page test case using the gherkin syntax.
...
...               This test case verifies that user can browse to the
...               start page of the service.
...
...               Test case uses Selenium and variables.
Library    Selenium2Library
Resource          resources.robot



*** Test Cases ***
Valid Login
    Given browser is opened to login page
    Then login page should be open

*** Keywords ***
Browser is opened to login page
    Open browser to login page