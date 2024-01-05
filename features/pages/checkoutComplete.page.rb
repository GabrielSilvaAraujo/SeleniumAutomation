class CheckoutComplete < SitePrism::Page

    element :thankText, "#checkout_complete_container > h2"

    def checkResult
        expect(thankText).to have_text("Thank you for your order!")
    end

end