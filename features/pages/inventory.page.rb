class InventoryPage < SitePrism::Page

    element :sortButton, :xpath, "//*[@id='header_container']/div[2]/div/span/select"

    def checkLoginSuccessful
        expect(sortButton.text).to eql "Name (A to Z)\nName (Z to A)\nPrice (low to high)\nPrice (high to low)"
    end

end