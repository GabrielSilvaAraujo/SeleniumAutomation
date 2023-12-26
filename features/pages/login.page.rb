class LoginPage < SitePrism::Page

    set_url ''
    element :userField, :id, "user-name"
    element :passwordField, :id, "password"
    element :loginButton, :id, "login-button"


    def userLogin(login, password)
        userField.set (login)
        passwordField.set (password)
        loginButton.click
    end
end