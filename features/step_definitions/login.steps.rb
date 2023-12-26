Given ('user has a registred account') do
    login.load
end

When ('they insert valid credentials') do
    login.userLogin(CREDENTIAL[:user][:login], CREDENTIAL[:user][:password])
end

Then ('they will access the products screen') do
    inventory.checkLoginSuccessful
end