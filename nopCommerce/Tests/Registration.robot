*** Settings ***
Library           SeleniumLibrary
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Keywords/Registration.robot

*** Test Cases ***
TC_REGISTER_002 Register new user with valid email
    [Setup]    Open app
    Navigate to Registration Page
    ${randomEmail}    Generate Random Email
    ${randomPassword}    Generate Random Password
    Register user    ${register_first_names}[user1]    ${register_last_names}[user1]    ${randomEmail}    ${register_companies}[company1]    ${randomPassword}    ${randomPassword}
    Validate successful register
    [Teardown]    Close Browser

TC_REGISTER_003 Register new user with invalid email
    [Setup]    Open app
    Navigate to Registration Page
    ${randomInvalidEmail}    Generate Random Invalid Email
    ${randomPassword}    Generate Random Password
    Register user    ${register_first_names}[user1]    ${register_last_names}[user1]    ${randomInvalidEmail}    ${register_companies}[company1]    ${randomPassword}    ${randomPassword}
    Validate invalid email error
    [Teardown]    Close Browser

TC_REGISTER_006 Register new user with password and empty confirm password field
    [Setup]    Open app
    Navigate to Registration Page
    ${randomEmail}    Generate Random Email
    ${randomPassword}    Generate Random Password
    Register user    ${register_first_names}[user1]    ${register_last_names}[user1]    ${randomEmail}    ${register_companies}[company1]    ${randomPassword}    ${register_empty}[pass]
    Validate empty confirm password error
    [Teardown]    Close Browser

TC_REGISTER_010 Register new user with empty First Name field
    [Setup]    Open app
    Navigate to Registration Page
    ${randomEmail}    Generate Random Email
    ${randomPassword}    Generate Random Password
    Register user    ${register_empty}[first-name]    ${register_last_names}[user1]    ${randomEmail}    ${register_companies}[company1]    ${randomPassword}    ${randomPassword}
    Validate empty first name error
    [Teardown]    Close Browser
