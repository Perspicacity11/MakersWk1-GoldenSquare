require 'menu'
require 'menu_items'

RSpec.describe Menu do

    it "initialises, adds an item and reads the menu" do
        menuitem1 = MenuItems.new("Chicken chow mein", 10)
        newmenu = Menu.new
        newmenu.additems(menuitem1)
        expect(newmenu.readmenu).to eq ["Chicken chow mein", 10]
    end

end