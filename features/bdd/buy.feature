Feature: buy product
For being able to make a purchase
The logged in user
Wants to add a given item to the Cart 


Scenario: Add to cart 
Given the user is logged in
When they click the "Add to cart" button
Then they will see "1" on the shopping cart badge 

Scenario: Go to checkout
Given The user has added a product to cart
When they click on the "Checkout" button
Then they will access the "Checkout: Your information" screen

Scenario: Complete purchase
Given the user has filled in the checkout information
And the user has pressed the "Continue" button
When The user presses the "Finish" button
Then the text "Thank you for your order!" should be visible
