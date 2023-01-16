class Counter
    def initialize
        @count = 0
    end

    def add(num)
        @count += num
    end

    def count
        @count
    end

    def report
        return "Counted to #{@count} so far."
    end
end