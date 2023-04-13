*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Resources/Testdata.robot
Resource          ../PageObjects/ShoppingCart.robot
Resource          ../PageObjects/AccountPage.robot

*** Keywords ***
Navigate to My Account
    Click link    ${SuccessfulLogin_MyAccount}
    Element text should be    ${CustomerInfo_MyAccount}    ${CustomerInfoLabel_MyAccount}

Navigate to Downloadable Products page
    Click link    ${DownloadableProductsLink_MyAccount}
    Element Should Be Visible    ${DownloadableProductsLabel_MyAccount}

Validate empty downloadable products page
    Element text should be    ${EmptyMessage}    ${NoDownloadableProducts_ErrorText_MyAccount}

Navigate to Back in stock subscriptions page
    Click link    ${BackInStockSubscriptionsLink_MyAccount}
    Element Should Be Visible    ${BackInStockSubscriptionsLabel_MyAccount}

Validate empty back in stock subscriptions page
    Element text should be    ${EmptyMessage}    ${NoSubscriptions_ErrorText_MyAccount}
