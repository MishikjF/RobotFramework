*** Variables ***
${AdvanceSearchCheckBox}    id:advs    # This is locator on the search page that is redirected after text is input in search bar on header of Demo NopComm
${CategoryDropDownMenu}    id:cid    # This is locator for drop down menu that is displayed after Advanced Search is checked
${SearchSubCategoriesCheckbox}    id:isc    # This is locator for checkbox that is displayed after Advanced search is checked
${ManufacturerDropDownMenu}    id:mid    # This is locator for drop down menu that is displayed after Advanced search is checked
${ProductDescriptionsCheckbox}    id:sid    # This is locator for checkbox that is displayed after Advanced search is checked
${SearchBtnAdvanceSearch}    //button[@class='button-1 search-button']
${NoResult_ErrorSearch}    //div[@class='no-result']
${ShortKeyword_ErrorSearch}    //div[@class='warning']
${CaseInsensitive_ProductLinkEg}    //a[@href="/asus-n551jk-xo076h-laptop"]
${AdvancedSearch_ProductLinkEg}    //a[@href="/hp-spectre-xt-pro-ultrabook"]
