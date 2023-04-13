*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Resources/Testdata.robot
Resource          ../PageObjects/Checkout.robot

*** Keywords ***
Leave input fields empty and click on continue button
    Element Should Be Visible    ${CheckoutLabel}
    Click button    ${ContinueBtn_BillingAddress_Checkout}

Validate empty required fields errors
    Wait Until Element Is Visible    ${EmptyFirstName_Error_Checkout}
    Element text should be    ${EmptyFirstName_Error_Checkout}    ${EmptyFirstN_ErrorText_Checkout}
    Element text should be    ${EmptyLastName_Error_Checkout}    ${EmptyLastN_ErrorText_Checkout}
    Element text should be    ${EmptyEmail_Error_Checkout}    ${EmptyEmail_ErrorText_Checkout}
    Element text should be    ${EmptyCountry_Error_Checkout}    ${EmptyCountry_ErrorText_Checkout}
    Element text should be    ${EmptyCity_Error_Checkout}    ${EmptyCity_ErrorText_Checkout}
    Element text should be    ${EmptyStreet_Error_Checkout}    ${EmptyStreet_ErrorText_Checkout}
    Element text should be    ${EmptyZip_Error_Checkout}    ${EmptyZip_ErrorText_Checkout}
    Element text should be    ${EmptyPhone_Error_Checkout}    ${EmptyPhone_ErrorText_Checkout}

Fill out Billing address section input fields
    [Arguments]    ${first-name}    ${last-name}    ${email}    ${country}    ${city}    ${address}    ${zip}    ${phone}
    Element Should Be Visible    ${CheckoutLabel}
    Element Should Be Visible    ${BillingAddressLabel_Checkout}
    Select Checkbox    ${SameAddressCheckbox_BillingAddress_Checkout}
    Input text    ${FirstNameInputField_BillingAddress_Checkout}    ${first-name}
    Input text    ${LastNameInputField_BillingAddress_Checkout}    ${last-name}
    Input text    ${EmailInputField_BillingAddress_Checkout}    ${email}
    Select From List By Label    ${CountryDropDown_BillingAddress_Checkout}    ${country}
    Input text    ${CityInputField_BillingAddress_Checkout}    ${city}
    Input text    ${Address1InputField_BillingAddress_Checkout}    ${address}
    Input text    ${ZipCodeInputField_BillingAddress_Checkout}    ${zip}
    Input text    ${PhoneNumberInputField_BillingAddress_Checkout}    ${phone}
    Wait Until Element Is Visible    ${ContinueBtn_BillingAddress_Checkout}
    Click button    ${ContinueBtn_BillingAddress_Checkout}

Choose ground method from shipping method section
    Element Should Be Visible    ${ShippingMethodLabel_Checkout}
    Wait Until Element Is Visible    ${GroundRadioBtnId_ShippingMethod_Checkout}
    Select Radio Button    ${GroundRadioBtnName_ShippingMethod_Checkout}    ${GroundRadioBtnValue_ShippingMethod_Checkout}
    Wait Until Element Is Visible    ${ContinueBtn_ShippingMethod_Checkout}
    Click button    ${ContinueBtn_ShippingMethod_Checkout}

Select pay by cheque or money order from payment method section
    Element Should Be Visible    ${PaymentMethodLabel_Checkout}
    Wait Until Element Is Visible    ${CheckRadioBtnId_PaymentMethod_Checkout}
    Select Radio Button    ${CheckRadioBtnName_PaymentMethod_Checkout}    ${CheckRadioBtnValue_PaymentMethod_Checkout}
    Wait Until Element Is Visible    ${ContinueBtn_PaymentMethod_Checkout}
    Click button    ${ContinueBtn_PaymentMethod_Checkout}

Validate message from Payment information section
    Element Should Be Visible    ${PaymentInformationLabel_Checkout}
    Wait Until Element Is Visible    ${Message_PaymentInformation_Checkout}
    Element Should Be Visible    ${Message_PaymentInformation_Checkout}
    Wait Until Element Is Visible    ${ContinueBtn_PaymentInformation_Checkout}
    Click button    ${ContinueBtn_PaymentInformation_Checkout}

Validate products info from confirm order section
    [Arguments]    ${name}
    Element Should Be Visible    ${ConfirmOrderLabel_Checkout}
    Wait Until Element Is Visible    ${LinkToPDPFromCheckout}
    Element Should Contain    ${LinkToPDPFromCheckout}    ${name}
    Wait Until Element Is Visible    ${ConfirmBtn_ConfirmOrder_Checkout}
    Click button    ${ConfirmBtn_ConfirmOrder_Checkout}

Validate order was successfully processed
    Wait Until Element Is Visible    ${ThankYouLabel_Checkout}
    Element Should Be Visible    ${ThankYouLabel_Checkout}
    Element Should Be Visible    ${Message_ThankYou_Checkout}
    Wait Until Element Is Visible    ${ContinueBtn_ThankYou_Checkout}
    Click button    ${ContinueBtn_ThankYou_Checkout}
    Location Should Be    ${Homepage_URL}
