*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../PageObjects/SearchPage.robot
Resource          ../Keywords/Search.robot

*** Test Cases ***
TC_SEARCH _002 Search for non-existing product
    [Setup]    Open app
    Basic search    ${search_non-existing_products}[product1]
    Validate no result error
    [Teardown]    Close Browser

TC_SEARCH _004 Test if search works for a less then 3 character keyword
    [Setup]    Open app
    Basic search    ${search_short_keywords}[product1]
    Validate short keyword error
    [Teardown]    Close Browser

TC_SEARCH _008 Test if the search is case insensitive
    [Setup]    Open app
    Basic search    ${search_case-insensitive}[product1]
    Validate case insensitive product
    Basic search    ${search_case-insensitive}[product2]
    Validate case insensitive product
    [Teardown]    Close Browser

TC_SEARCH _009 Run succesful search using the Advanced search option
    [Setup]    Open app
    Basic search    ${advanced_search_data}[keyword]
    Advanced search    ${advanced_search_data}[category]    ${advanced_search_data}[manufacturer]
    Validate successful advanced search product
    [Teardown]    Close Browser
