*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../Keywords/Login.robot
Resource          ../PageObjects/ShoppingCart.robot
Resource          ../Keywords/Account.robot

*** Test Cases ***
TC_ACCOUNT _006 Check if Downloadable product link leads to My account - Downloadable products
    [Setup]    Open app
    Navigate to Login page
    Login user    ${login_valid_credentials}[email]    ${login_valid_credentials}[pass]
    Validate successful login
    Navigate to My Account
    Navigate to Downloadable Products page
    Validate empty downloadable products page
    [Teardown]    Close Browser

TC_ACCOUNT _007 Check if Back in stock subscriptions link leads to My account - Back in stock subscriptions section
    [Setup]    Open app
    Navigate to Login page
    Login user    ${login_valid_credentials}[email]    ${login_valid_credentials}[pass]
    Validate successful login
    Navigate to My Account
    Navigate to Back in stock subscriptions page
    Validate empty back in stock subscriptions page
    [Teardown]    Close Browser
