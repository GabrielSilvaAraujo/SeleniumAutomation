class CheckoutStepOnePage < SitePrism::Page

    element :checkoutTitle, "#header_container > div.header_secondary_container > span" 
    element :cancelButton, :id, "cancel"

    def checkTitle
      expect(checkoutTitle).to have_text('Checkout: Your Information')
    end
end