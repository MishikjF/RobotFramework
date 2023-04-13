*** Variables ***
${EmailInputFieldLogin}    id:Email
${PasswordInputFieldLogin}    id:Password
${RememberMeCheckbox}    id:RememberMe
${LostPasswordLink}    //*[@href="/passwordrecovery"]
${LoginButton}    //button[@class="button-1 login-button"]
${RegisterButtonOnLoginPage}    //button[@class="button-1 register-button"]
${LoginLabel_LoginPage}    //div[@class="page-title"]
${SuccessfulLogin_MyAccount}    //a[@class='ico-account']
${EmptyEmail_ErrorLogin}    id:Email-error
${InvalidCredentials_ErrorLogin}    //div[@class='message-error validation-summary-errors']
