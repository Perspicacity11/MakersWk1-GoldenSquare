class MenuItems

    def initialize(name, price)
        @name = name
        @price = price
    end

    def name
        @name
    end

    def price 
        return "£#{@price}"
    end

    def iteminfo
        return "#{@name}, £#{@price}"
    end
end

