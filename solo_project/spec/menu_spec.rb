require 'menu'

RSpec.describe Menu do

    it "initialises, adds an item and reads the menu" do
        menuitem1 = double :menuitem
        newmenu = Menu.new
        newmenu.additems(menuitem1)
        expect(newmenu.readmenu).to eq [menuitem1]
    end

end