class LoginPage < SitePrism::Page

    set_url ''
    element :userField, :id, "user-name"
    element :passwordField, :id, "password"
    element :loginButton, :id, "login-button"
    element :errorMessage, :xpath, "//*[@id='login_button_container']/div/form/div[3]"
   

    def userLogin(login, password)
        userField.set (login)
        passwordField.set (password)
        loginButton.click
    end

    def checkLoginFail
        expect(errorMessage).to have_text('Epic sadface: Username and password do not match any user in this service')
    end

    def checkLoginLocked
        expect(errorMessage).to have_text('Epic sadface: Sorry, this user has been locked out.')
    end

    def checkLoginScreen
        expect(userField).to be_visible
    end

end