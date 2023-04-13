*** Settings ***
Library           SeleniumLibrary
Library           String
Resource          ../Resources/Testdata.robot
Resource          ../Keywords/Common.robot
Resource          ../Keywords/PLP.robot
Resource          ../PageObjects/ShoppingCart.robot
Resource          ../Keywords/WishList.robot
Resource          ../Keywords/ShoppingCart.robot

*** Test Cases ***
TC_PRODUCT_004 Verify the sorting and displaying option on the product page is working properly
    [Setup]    Open app
    Navigate to Notebooks Submenu PLP
    Sort and display products    ${sort_by_labels}[label5]    ${display_products_labels}[label1]
    Count products
    Click on next page of PLP
    Count products
    [Teardown]    Close Browser

TC_PRODUCT_005 Verify Add to cart should work properly with available products
    [Setup]    Open app
    Navigate ro Camera & Photo Submenu PLP
    Navigate to Available Product PDP
    Input Quantity of Product    ${InputQuantityOfProduct}[quantity2]
    Navigate to add to card btn and click
    Navigate to shopping cart (when element is not visible)
    Validate camera product with correct quantity is added to shopping cart    ${InputQuantityOfProduct}[quantity2]
    [Teardown]    Close Browser

TC_PRODUCT_006 Verify Add to cart should work properly with unavailable products
    [Setup]    Open app
    Navigate ro Camera & Photo Submenu PLP
    Validate that unavailable product can't be ordered
    [Teardown]    Close Browser

TC_PRODUCT_007 Verify Add to wish list should work properly with available product
    [Setup]    Open app
    Navigate to Books category PLP
    Click on add to wishlist button for available product    ${AddToWishlistBtnForAvailableProduct2}
    Navigate to Wishlist
    Validate available product was added to wishlist    ${LinkToAvailableProduct2PDP}    ${NameOfAvailableProduct2}
    [Teardown]    Close Browser
