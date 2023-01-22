require 'grammarstats'

RSpec.describe GrammarStats do
    it "checks input string for correct grammar" do
        expect(GrammarStats.new.check("This is a correct sentence.")).to eq true
    end

    it "checks multiple input strings for correct grammar" do
      expect(GrammarStats.new.check("This is a correct sentence.")).to eq true
      expect(GrammarStats.new.check("This is also a correct sentence.")).to eq true
      expect(GrammarStats.new.check("This is not a correct sentence")).to eq false
    end

    it "checks multiple input strings for correct grammar, adds the correct ones to an array and then returns the percentage vs total sentences" do
      checking = GrammarStats.new
      checking.check("This is a correct sentence.")
      checking.check("This is also a correct sentence.")
      checking.check("This is not a correct sentence,")
      checking.check("nor is this")
      expect(checking.percentage_good).to eq 50
    end
end