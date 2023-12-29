Given ('user is logged in') do
    login.load
    login.userLogin(CREDENTIAL[:user][:login], CREDENTIAL[:user][:password])
end

When ('select A-Z sorting option') do
    inventory.selectAtoZ
end

Then ('they will see that the first product is "Sauce Labs Backpack"') do
    inventory.checkAtoZsorted
end

When ('select Z-A sorting option') do
    inventory.selectZtoA
end

Then('they will see that the last product is "Sauce Labs Backpack"') do 
    inventory.checkZtoAsorted
end