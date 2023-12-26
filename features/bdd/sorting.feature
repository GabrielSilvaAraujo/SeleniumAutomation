Feature: Sorting products
For being able to organize the products as the user wants
The logged in user 
Wants to use the sorting button

Scenario: Sort A-Z
Given user is logged in
When select A-Z sorting option
Then they will see that the first product is "Sauce Labs Backpack"    