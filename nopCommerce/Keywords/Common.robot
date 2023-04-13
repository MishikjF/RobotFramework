*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/Testdata.robot

*** Keywords ***
Open app
    Open browser    ${Homepage_URL}    ${browser}
    Maximize Browser Window
