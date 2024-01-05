class CartPage < SitePrism::Page

  element :checkoutButton, :id, "checkout"

  def clickCheckout
    checkoutButton.click
  end

end