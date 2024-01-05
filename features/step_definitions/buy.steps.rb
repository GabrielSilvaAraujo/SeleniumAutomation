When('they click the "Add to cart" button') do 
    inventory.addToCart
end
  
Then('they will see "1" on the shopping cart badge') do 
    inventory.checkBadge    
end

Given('The user has added a product to cart') do
    login.load
    login.userLogin(CREDENTIAL[:user][:login], CREDENTIAL[:user][:password])
    inventory.addToCart
    inventory.accessCart
end
  
When('they click on the "Checkout" button') do 
    cart.clickCheckout
end
  
Then('they will access the "Checkout: Your information" screen') do 
    checkoutStepOne.checkTitle
    sleep 1
end