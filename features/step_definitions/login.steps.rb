Given ('the user has a registred account') do
    login.load
end

When ('they insert valid credentials') do
    login.userLogin(CREDENTIAL[:user][:login], CREDENTIAL[:user][:password])
end

Then ('they will access the products screen') do
    inventory.checkLoginSuccessful
end

When ('they insert a valid login with the wrong password') do
    login.userLogin(CREDENTIAL[:user][:login], "wrong_passord")
end

Then ('they will see the error massage') do
    login.checkLoginFail
end

Given('has been locked out by the admin') do
    
  end

When ('they insert valid credentials for locked user') do
    login.userLogin(CREDENTIAL[:locked_user][:login], CREDENTIAL[:user][:password])
end

Then ('they will see the locked out massage') do
    login.checkLoginLocked
end

Given('the user is logged in') do
    login.load
    login.userLogin(CREDENTIAL[:user][:login], CREDENTIAL[:user][:password])
end

When ('they select the logout menu option') do
    inventory.logout
end

Then ('they will access the login screen') do
    login.checkLoginScreen
end