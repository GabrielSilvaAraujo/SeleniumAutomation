Dir[File.join(File.dirname(__FILE__), '~\..\Symphony\features\pages*.page.rb')].each { |file| require file }

module Page

  def login
    @login ||= LoginPage.new
  end

  def inventory
    @inventory ||= InventoryPage.new
  end

end
