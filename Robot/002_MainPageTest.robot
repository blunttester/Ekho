*** Settings ***
Documentation     Start page test case using the gherkin syntax.
...
...               This test case verifies that user can browse to the
...               start page of the service.
...
...               Test case uses Selenium and variables.
Resource          resources.robot



*** Test Cases ***
Valid Login
    Login page should be open

User Credentials Submission
	User fills credentials
	User submits login credentials
	
Target Page Validation
	Main Page Should Be Opened
