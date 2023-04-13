*** Variables ***
${OutOfStock_PLP}    id:stock-availability-value-17
${InputQuantityProduct1Red}    id:product_enteredQuantity_15
${AddToCartBtnProduct1Red}    id:add-to-cart-button-15    # This is locator for add to cart button for Nikon D5500 DSLR - Red
${LinkToAvailableProduct2PDP}    //a[@class='product-name']    # This is locator for available product PDP
${CameraProduct_PDP}    //a[normalize-space()='Leica T Mirrorless Digital Camera']    # This is locator for Mirrorless Digital Camera PDP
${CameraProductLabel_PDP}    //h1[normalize-space()='Leica T Mirrorless Digital Camera']    # This is locator for Leica T Mirrorless Digital Camera heading in PDP
${AddReviewCameraProduct_PDP}    (//a[@href="/productreviews/16"])[2]    # This is locator for Leica T Mirrorless Digital Camera add review link
${RegisteredUsersException_ErrorPDP}    //div[@class="message-error validation-summary-errors"]
${BookProduct_PDP}    //a[normalize-space()='Pride and Prejudice']    # This is locator for Pride and Prejudice book PDP
${BookProductLabel_PDP}    //h1[normalize-space()='Pride and Prejudice']    # This is locator for Pride and Prejudice book label
${EmailFriendBtn}    //button[@class="button-2 email-a-friend-button"]    # This is locator for email a friend button on PDP
${EmailFriend_Label}    //h1[normalize-space()='Email a friend']    # This is locator for email a friend label on PDP
${FriendEmailInputField_PDP}    id:FriendEmail    # This is locator for the friend email input field on the email a friend PDP
${UserEmailInputField_PDP}    id:YourEmailAddress    # This is locator for user email input field on email a friend PDP
${MessageInputField_PDP}    id:PersonalMessage    # This is locator for message input field on email a friend PDP
${SendEmailBtn_PDP}    //button[@name='send-email']    # This is locator for send email button on email a friend PDP
${ComputerProduct_PDP}    //h2[@class='product-title']//a[normalize-space()='Build your own computer']    # This is locator for Build your own computer PDP
${ComputerProductLabel_PDP}    //h1[normalize-space()='Build your own computer']    # This is locator for Build your own computer product label in PDP
${ProcessorDropDown_BuildComputer_PDP}    id:product_attribute_1
${RAMDropDown_BuildComputer_PDP}    id:product_attribute_2
${HDDRadioBtn_name_PDP}    product_attribute_3
${HDDRadioBtn_value_PDP}    7
${OSRadioBtn_name_PDP}    product_attribute_4
${OSRadioBtn_value_PDP}    8
${MSOfficeCheckbox_PDP}    id:product_attribute_5_10
${AcroReaderCheckbox_PDP}    id:product_attribute_5_11
${TotalCommCheckbox_PDP}    id:product_attribute_5_12
${AddToCartBtnComputerProduct_PDP}    //button[@id='add-to-cart-button-1']    # This is locator for the add to cart button of Build your own computer on PDP
${NecklaceProduct_PDP}    //h2[@class='product-title']//a[normalize-space()='Elegant Gemstone Necklace (rental)']    # This is locator for link to Elegant Gemstone Necklace (rental) PDP
${NecklaceProductLabel_PDP}    //h1[normalize-space()='Elegant Gemstone Necklace (rental)']    # This is locator for header on Elegant Gemstone Necklace (rental) PDP
${StartDateInputField_NecklacePDP}    id:rental_start_date_40    # This is locator for start date input field on Elegant Gemstone Necklace (rental) PDP
${EndDateInputField_NecklacePDP}    id:rental_end_date_40    # This is locator for the end date input field on Elegant Gemstone Necklace (rental) PDP
${QuantityInputField_NecklacePDP}    id:product_enteredQuantity_40    # This is locator for quantity input field on Elegant Gemstone Necklace (rental) PDP
${RentBtn_NecklacePDP}    //button[@id='add-to-cart-button-40']    # This is locator for the rent button on Elegant Gemstone Necklace (rental) PDP
${BookProduct2Label_PDP}    //h1[normalize-space()='First Prize Pies']    # This is locator for First Prize Pies heading in PDP
${AddToCartBtnBookProduct3_PDP}    (//button[@class="button-2 product-box-add-to-cart-button"])[3]    # This is locator for add to cart button under the book product Pride and Prejudice on PDP
${NecklaceProduct_PDP}    //h2[@class='product-title']//a[normalize-space()='Elegant Gemstone Necklace (rental)']    # This is locator for link to Elegant Gemstone Necklace (rental) PDP
${ClothingProduct_PDP}    //h2[@class='product-title']//a[@href="/custom-t-shirt"]    # This is locator for link of Custom T-Shirt PDP on Clothing PLP
${ClothingProductLabel_PDP}    //h1[normalize-space()='Custom T-Shirt']    # This is locator for heading of Custom T-Shirt PDP
${TextInputField_CustomTShirt_PDP}    //input[@id='product_attribute_12']
${AddToCartBtnClothingProduct_PDP}    //button[@class="button-1 add-to-cart-button"]    # This is locator for the add to cart button on Custom T-Shirt PDP
