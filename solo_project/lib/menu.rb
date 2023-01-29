require 'menu_items'

class Menu

    def initialize
        @menu = []
        @selecteditems = []
    end

    def additems(menuitem)
        @menu << menuitem
    end

    def readmenu
        @menu.join("")
    end

    # def selectitem
    #     selection = gets.chomp
    #     @selecteditems << selection
    # end

    # def receipt
    #     grandtotal = []
    #     @selecteditems.each do |selecteditem|
    #         puts selecteditem(name, price)
    #         grandtotal << price
    #     end
    #     grandtotal.sum
    # end

end

