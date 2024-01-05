When('they click the "Add to cart" button') do 
    inventory.addToCart
end
  
Then('they will see "1" on the shopping cart badge') do 
    inventory.checkBadge    
end

Given('The user has added a product to cart') do
    login.completeLogin
    inventory.accessCart
end
  
When('they click on the "Checkout" button') do 
    cart.clickCheckout
end
  
Then('they will access the "Checkout: Your information" screen') do 
    checkoutStepOne.checkTitle
end

Given ('the user has filled in the checkout information') do
    login.completeLogin
    inventory.accessCart
    cart.clickCheckout
    checkoutStepOne.fillInformation
end

Given ('the user has pressed the "Continue" button') do
    checkoutStepOne.clickContinue
end

When ('The user presses the "Finish" button') do
    checkoutStepTwo.clickFinish
end

Then ('the text "Thank you for your order!" should be visible') do
    checkoutComplete.checkResult
end