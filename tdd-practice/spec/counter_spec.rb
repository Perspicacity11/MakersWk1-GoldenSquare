require 'counter'

RSpec.describe Counter do
    
    it "instantiates the Counter object at count 0" do
    end_count = Counter.new
    outcome = end_count.report
    expect(outcome).to eq "Counted to 0 so far."
    end

    it "takes count to 5 when provided the integer 5" do
    end_count = Counter.new
    end_count.add(5)
    outcome = end_count.report
    expect(outcome).to eq "Counted to 5 so far."
    end

    it "takes count to 8 when provided integer 3 as argument, with count standing at 5 on init" do
    end_count = Counter.new
    end_count.add(5)
    end_count.add(3)
    outcome = end_count.report
    expect(outcome).to eq "Counted to 8 so far."
    end

    it "takes count to 14 when provided integer 6 as argument, with count standing at 8 on init" do
    end_count = Counter.new
    end_count.add(5)
    end_count.add(3)
    end_count.add(6)
    outcome = end_count.report
    expect(outcome).to eq "Counted to 14 so far."    
    end
end