*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Keywords/Common.robot
Resource          ../PageObjects/Header.robot
Resource          ../Resources/Testdata.robot
Resource          ../Keywords/PLP.robot
Resource          ../Keywords/ShoppingCart.robot
Resource          ../Keywords/Checkout.robot

*** Test Cases ***
TC_CHECKOUT_005 Check if error message is displayed when user doesn't enter data in all of the required filed in billing address while checking out as guest
    [Setup]    Open app
    Navigate to Software Submenu PLP
    Click on add to cart button for product    ${AddToCartBtnForSoftwareProduct}
    Navigate to shopping cart
    Navigate to Checkout as guest page
    Leave input fields empty and click on continue button
    Validate empty required fields errors
    [Teardown]    Close Browser

TC_CHECKOUT_007 Checkout as guest and pay with: Check / Money order
    [Setup]    Open app
    Navigate to Software Submenu PLP
    Click on add to cart button for product    ${AddToCartBtnForSoftwareProduct}
    Navigate to shopping cart
    Navigate to Checkout as guest page
    Fill out Billing address section input fields    ${billing_address_checkout}[first-name]    ${billing_address_checkout}[last-name]    ${billing_address_checkout}[email]    ${billing_address_checkout}[country]    ${billing_address_checkout}[city]    ${billing_address_checkout}[address1]    ${billing_address_checkout}[zip-code]    ${billing_address_checkout}[phone-number]
    Choose ground method from shipping method section
    Select pay by cheque or money order from payment method section
    Validate message from Payment information section
    Validate products info from confirm order section    ${NameOfSoftwareProduct}
    Validate order was successfully processed
    [Teardown]    Close Browser
