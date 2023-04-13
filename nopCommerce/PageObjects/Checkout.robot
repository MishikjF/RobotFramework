*** Variables ***
${CheckoutAsGuestBtn}    //button[@class="button-1 checkout-as-guest-button"]
${CheckoutLabel}    //h1[normalize-space()='Checkout']
${ContinueBtn_BillingAddress_Checkout}    //button[@onclick='Billing.save()']
${EmptyFirstName_Error_Checkout}    (//span[@class="field-validation-error"])[1]
${EmptyLastName_Error_Checkout}    (//span[@class="field-validation-error"])[2]
${EmptyEmail_Error_Checkout}    (//span[@class="field-validation-error"])[3]
${EmptyCountry_Error_Checkout}    (//span[@class="field-validation-error"])[4]
${EmptyCity_Error_Checkout}    (//span[@class="field-validation-error"])[5]
${EmptyStreet_Error_Checkout}    (//span[@class="field-validation-error"])[6]
${EmptyZip_Error_Checkout}    (//span[@class="field-validation-error"])[7]
${EmptyPhone_Error_Checkout}    (//span[@class="field-validation-error"])[8]
${BillingAddressLabel_Checkout}    //h2[normalize-space()='Billing address']
${SameAddressCheckbox_BillingAddress_Checkout}    id:ShipToSameAddress    # This is locator for the ship to same address checkbox in the billing address section on Checkout page
${FirstNameInputField_BillingAddress_Checkout}    id:BillingNewAddress_FirstName
${LastNameInputField_BillingAddress_Checkout}    id:BillingNewAddress_LastName
${EmailInputField_BillingAddress_Checkout}    id:BillingNewAddress_Email
${CityInputField_BillingAddress_Checkout}    id:BillingNewAddress_City
${Address1InputField_BillingAddress_Checkout}    id:BillingNewAddress_Address1
${ZipCodeInputField_BillingAddress_Checkout}    id:BillingNewAddress_ZipPostalCode
${PhoneNumberInputField_BillingAddress_Checkout}    id:BillingNewAddress_PhoneNumber
${CountryDropDown_BillingAddress_Checkout}    //select[@id='BillingNewAddress_CountryId']
${ShippingMethodLabel_Checkout}    //h2[normalize-space()='Shipping method']
${GroundRadioBtnId_ShippingMethod_Checkout}    //input[@id='shippingoption_0']
${GroundRadioBtnName_ShippingMethod_Checkout}    shippingoption
${GroundRadioBtnValue_ShippingMethod_Checkout}    Ground___Shipping.FixedByWeightByTotal
${ContinueBtn_ShippingMethod_Checkout}    //button[@onclick='ShippingMethod.save()']
${PaymentMethodLabel_Checkout}    //h2[normalize-space()='Payment method']
${CheckRadioBtnId_PaymentMethod_Checkout}    //input[@id='paymentmethod_0']
${CheckRadioBtnName_PaymentMethod_Checkout}    paymentmethod
${CheckRadioBtnValue_PaymentMethod_Checkout}    Payments.CheckMoneyOrder
${ContinueBtn_PaymentMethod_Checkout}    //button[@onclick='PaymentMethod.save()']
${PaymentInformationLabel_Checkout}    //h2[normalize-space()='Payment information']
${Message_PaymentInformation_Checkout}    //p[contains(text(),"Mail Personal or Business Check, Cashier's Check")]
${ContinueBtn_PaymentInformation_Checkout}    //button[@onclick='PaymentInfo.save()']
${ConfirmOrderLabel_Checkout}    //h2[normalize-space()='Confirm order']
${ConfirmBtn_ConfirmOrder_Checkout}    //button[@onclick='ConfirmOrder.save()']
${ThankYouLabel_Checkout}    //h1[normalize-space()='Thank you']
${Message_ThankYou_Checkout}    //strong[normalize-space()='Your order has been successfully processed!']
${ContinueBtn_ThankYou_Checkout}    //button[@onclick='setLocation("/")']
${ThankYouLabel_Checkout}    //h1[normalize-space()='Thank you']
${Message_ThankYou_Checkout}    //strong[normalize-space()='Your order has been successfully processed!']
${ContinueBtn_ThankYou_Checkout}    //button[@onclick='setLocation("/")']
${LinkToPDPFromCheckout}    //a[@class='product-name']
