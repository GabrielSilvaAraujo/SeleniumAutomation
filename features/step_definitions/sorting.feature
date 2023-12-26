Given ('user is logged in') do
    login.load
    login.userLogin(CREDENTIAL[:user][:login], CREDENTIAL[:user][:password])
end

When ('select A-Z sorting option') do
    
end

Then ('they will see that the first product is "Sauce Labs Backpack"') do
    
end