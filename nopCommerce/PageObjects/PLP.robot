*** Variables ***
${ComputersMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Computers']    # This is locator for computers menu from PLP on the Categories sidebar
${DesktopsSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Desktops']    # This is locator for desktops submenu from Computers PLP on the Categories sidebar
${NotebooksSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Notebooks']    # This is locator for notebooks submenu from Computers PLP on the Categories sidebar
${SoftwareSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Software']    # This is locator for software submenu from Computers PLP on the Categories sidebar
${ElectronicsMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Electronics']
${CameraPhotoSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Camera & photo']
${CellPhonesSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Cell phones']
${OthersSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Others']
${ApparelSubMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Apparel']
${ShoesSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Shoes']
${ClothingSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Clothing']
${AccessoriesSubMenuLinkSidebar}    //li[@class='inactive']//a[normalize-space()='Accessories']
${DigitalDownloadsMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Digital downloads']
${BooksMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Books']
${JewelryMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Jewelry']
${GiftCardsMenuLinkSidebar}    //li[@class='active last']//a[normalize-space()='Gift Cards']
${DesktopsItemBoxLink}    //a[@title='Show products in category Desktops'][normalize-space()='Desktops']    # This is locator for Desktops item box picture on Computers PLP
${NotebooksItemBoxLink}    //a[@title='Show products in category Notebooks'][normalize-space()='Notebooks']
${SoftwareItemBoxLink}    //a[@title='Show products in category Software'][normalize-space()='Software']
${CameraPhotoItemBoxLink}    //a[@title='Show products in category Camera & photo'][normalize-space()='Camera & photo']
${CellPhonesItemBoxLink}    //a[@title='Show products in category Cell phones'][normalize-space()='Cell phones']
${OthersItemBoxLink}    //a[@title='Show products in category Others'][normalize-space()='Others']
${ShoesItemBoxLink}    //a[@title='Show products in category Shoes'][normalize-space()='Shoes']
${ClothingItemBoxLink}    //a[@title='Show products in category Clothing'][normalize-space()='Clothing']
${AccessoriesItemBoxLink}    //a[@title='Show products in category Accessories'][normalize-space()='Accessories']
${DropDownSortProducts}    id:products-orderby    # This is locator for drop down menu for sort products on PLP
${DropDownDisplayProducts}    id:products-pagesize
${DisplayAsListIcon}    //a[@title='List']
${CountProductsOnPLP}    //div[@class="product-item"]
${NotebooksLabel_PLP}    //h1[normalize-space()='Notebooks']
${ElectronicsLabel_PLP}    //h1[normalize-space()='Electronics']
${CameraPhotoLabel_PLP}    //h1[normalize-space()='Camera & photo']
${UnavailableButtonForProduct}    (//div[@class="buttons"])[2]
${UnavailableProductLink}    //div[@class='picture']//a[@href="/apple-icam"]
${AddToCartBtnForAvailableProduct1}    (//button[@class="button-2 product-box-add-to-cart-button"])[1]
${NextPageNavigator}    //li[@class="next-page"]
${BooksLabel_PLP}    //h1[normalize-space()='Books']
${AddToWishlistBtnForAvailableProduct2}    (//button[@class="button-2 add-to-wishlist-button"])[2]
${ComputersLabel_PLP}    //h1[normalize-space()='Computers']
${DesktopsLabel_PLP}    //h1[normalize-space()='Desktops']
${JewelryLabel_PLP}    //h1[normalize-space()='Jewelry']    # This is locator for jewelry heading on PLP
${ApparelLabel_PLP}    //h1[normalize-space()='Apparel']
${ClothingLabel_PLP}    //h1[normalize-space()='Clothing']
${SoftwareLabel_PLP}    //h1[normalize-space()='Software']    # This is locator for the header of Software PLP
${AddToCartBtnForSoftwareProduct}    (//button[@class="button-2 product-box-add-to-cart-button"])[2]
