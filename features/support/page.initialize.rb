Dir[File.join(File.dirname(__FILE__), 'features\pages*.pages.rb')].each { |file| require file }

module Page

  def login
    @login ||= LoginPage.new
  end

  def inventory
    @inventory ||= InventoryPage.new
  end

end
