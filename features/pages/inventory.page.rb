class InventoryPage < SitePrism::Page

    element :sortButton, :xpath, "//*[@id='header_container']/div[2]/div/span/select"
    element :atoZ, :xpath, "//*[@id='header_container']/div[2]/div/span/select/option[1]"
    element :ztoA, :xpath, "//*[@id='header_container']/div[2]/div/span/select/option[2]"
    element :inventoryList, "#inventory_container > div > div:nth-child(1) > div.inventory_item_img"
    element :firstItem, "#inventory_container > div > div:first-child > div.inventory_item_description"
    element :lastItem, "#inventory_container > div > div:last-child > div.inventory_item_description"
    element :mainMenu, :id, "react-burger-menu-btn"
    element :logoutButton, :id, "logout_sidebar_link" 
    

    def checkLoginSuccessful
        expect(current_url).to end_with('/inventory.html')
    end

    def selectAtoZ
        sortButton.click
        atoZ.click
    end

    def selectZtoA
        sortButton.click
        ztoA.click
    end

    def checkAtoZsorted
        expect(firstItem).to have_text('Sauce Labs Backpack')
    end

    def checkZtoAsorted
        expect(lastItem).to have_text('Sauce Labs Backpack')
    end

    def logout
        mainMenu.click
        logoutButton.click
    end
    
end