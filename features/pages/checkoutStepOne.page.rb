class CheckoutStepOnePage < SitePrism::Page

    element :checkoutTitle, "#header_container > div.header_secondary_container > span" 
    element :cancelButton, :id, "cancel"
    element :firstName, :id, "first-name"
    element :lastName, :id, "last-name"
    element :zipCode, :id, "postal-code"
    element :continueButton, :id, "continue"

    def checkTitle
      expect(checkoutTitle).to have_text('Checkout: Your Information')
    end

    def fillInformation
      firstName.set (CREDENTIAL[:creditInformation][:firstName])
      lastName.set (CREDENTIAL[:creditInformation][:lastName])
      zipCode.set (CREDENTIAL[:creditInformation][:zipCode])
    end

    def clickContinue
      continueButton.click
    end
end