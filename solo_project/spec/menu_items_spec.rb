require 'menu_items'

RSpec.describe MenuItems do
    it "instantiates a new item and returns its name" do
        menuitem1 = MenuItems.new("Chicken chow mein", 10)
        expect(menuitem1.name).to eq "Chicken chow mein"
    end

    it "instantiates a new item and returns its price" do
        menuitem1 = menuitem1 = MenuItems.new("Chicken chow mein", 10)
        expect(menuitem1.price).to eq "£10"
    end

    it "instantiates a new item and returns its name and price" do
        menuitem1 = menuitem1 = MenuItems.new("Chicken chow mein", 10)
        expect(menuitem1.iteminfo).to eq "Chicken chow mein, £10"
    end

    it "instantiates three items and returns their names and prices" do
        menuitem1 = MenuItems.new("Chicken chow mein", 10)
        menuitem2 = MenuItems.new("Dim sum", 5)
        menuitem3 = MenuItems.new("Half duck", 12)
        expect(menuitem1.iteminfo).to eq "Chicken chow mein, £10"
        expect(menuitem2.iteminfo).to eq "Dim sum, £5"
        expect(menuitem3.iteminfo).to eq "Half duck, £12"
    end

end