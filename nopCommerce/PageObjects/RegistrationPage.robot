*** Variables ***
${GenderMaleRadioButton}    id:gender-male
${GenderFemaleRadioButton}    id:gender-female
${FirstNameInputField}    id:FirstName
${LastNameInputField}    id:LastName
${DayDOBDropDownMenu}    name:DateOfBirthDay
${MonthDOBDropDown}    name:DateOfBirthMonth
${YearDOBDropDown}    name:DateOfBirthYear
${EmailInputFieldRegister}    id:Email
${CompanyInputField}    id:Company
${NewsletterCheckBox}    id:Newsletter
${PasswordInputFieldRegister}    id:Password
${ConfirmPasswordInputField}    id:ConfirmPassword
${RegisterButton}    id:register-button
${RegisterLabel_RegistrationPage}    //h1[normalize-space()='Register']
${SuccessfulRegister}    //div[@class='result']
${InvalidEmail_ErrorRegister}    id:Email-error
${EmptyConfirmPassword_ErrorRegister}    id:ConfirmPassword-error
${EmptyFirstName_ErrorRegister}    id:FirstName-error
