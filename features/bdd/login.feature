Feature: login 
For being able to access logged in functions 
The User with a created account
Wants to log into the website


Scenario: successful login
Given the user has a registred account
When they insert valid credentials 
Then they will access the products screen


Scenario: wrong password
Given the user has a registred account
When they insert a valid login with the wrong password
Then they will see the error massage 

Scenario: Locked out user
Given the user has a registred account
And has been locked out by the admin
When they insert valid credentials for locked user
Then they will see the locked out massage 

Scenario: Logout
Given the user is logged in
When they select the logout menu option
Then they will access the login screen