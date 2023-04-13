*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../Keywords/Login.robot
Resource          ../Resources/Testdata.robot

*** Test Cases ***
TC_LOGIN_002 Enter valid email and valid password
    [Setup]    Open app
    Navigate to Login page
    Login user    ${login_valid_credentials}[email]    ${login_valid_credentials}[pass]
    Validate successful login
    [Teardown]    Close Browser

TC_LOGIN_004 Enter invalid email and valid password
    [Setup]    Open app
    Navigate to Login page
    Login user    ${login_invalid_credentials}[email]    ${login_valid_credentials}[pass]
    Validate invalid credentials error
    [Teardown]    Close Browser

TC_LOGIN_006 Enter empty email and empty password
    [Setup]    Open app
    Navigate to Login page
    Login user    ${login_empty}[email]    ${login_empty}[pass]
    Validate missing email error
    [Teardown]    Close Browser

TC_LOGIN_008 Enter empty email and valid password
    [Setup]    Open app
    Navigate to Login page
    Login user    ${login_empty}[email]    ${login_valid_credentials}[pass]
    Validate missing email error
    [Teardown]    Close Browser
