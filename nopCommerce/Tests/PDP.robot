*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Resources/Testdata.robot
Resource          ../Keywords/Common.robot
Resource          ../Keywords/PLP.robot
Resource          ../Keywords/PDP.robot
Resource          ../Keywords/ShoppingCart.robot
Resource          ../PageObjects/ShoppingCart.robot

*** Test Cases ***
TC_DETAILS_002 Write and submit review for product without login in
    [Setup]    Open app
    Navigate ro Camera & Photo Submenu PLP
    Navigate to camera product PDP    ${CameraProduct_PDP}    ${CameraProductLabel_PDP}
    Click on add review link for camera product    ${AddReviewCameraProduct_PDP}
    Validate review can't be added without login
    [Teardown]    Close Browser

TC_DETAILS_005 Check the share product functionality
    [Setup]    Open app
    Navigate to Books category PLP
    Navigate to book product PDP    ${BookProduct_PDP}    ${BookProductLabel_PDP}
    Click on email friend button
    Share product    ${email_friend}[friend]    ${email_friend}[user]    ${email_friend}[message]
    Validate product can't be shared without login
    [Teardown]    Close Browser

TC_DETAILS_006 Test the renting capability of product page with valid dates
    [Setup]    Open app
    Navigate to Jewelry PLP
    Navigate to Necklace Product PDP
    Input fields with valid data to rent necklace product    ${input_fields_necklace}[start-date]    ${input_fields_necklace}[end-date]    ${input_fields_necklace}[quantity]
    Navigate to shopping cart
    Validate rented product with correct quantity is added to shopping cart    ${input_fields_necklace}[quantity]
    [Teardown]    Close Browser

TC_DETAILS_008 Check custom configuration for a product by selecting all of the listed choices
    [Setup]    Open app
    Navigate to Desktops Submenu PLP
    Navigate to Computer Product PDP
    Build your own PC with all selected choices    ${build_pc_drop-down_labels}[processor]    ${build_pc_drop-down_labels}[RAM]    ${HDDRadioBtn_value_PDP}    ${OSRadioBtn_value_PDP}
    Navigate to shopping cart
    Validate that product was added to shopping cart    ${LinkToAvailableProduct2PDP}    ${NameOfComputerProduct}
    [Teardown]    Close Browser
