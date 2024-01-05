class CheckoutStepTwoPage < SitePrism::Page

    element :finishButton, :id, "finish"

    def clickFinish
        finishButton.click
    end

end