require 'dr2_propersentence'

RSpec.describe "programme that returns true if the test provided as argument begins with a capital letter and ends with appropriate punctuation, and fails if not" do
    it "returns true for index string beginning with a capital letter T" do
        expect(propersentence("This is a correct sentence.")).to eq true
    end

    it "returns true for input string ending with correct punctuation" do
        expect(propersentence("This is a correct sentence too.")).to eq true
    end

    it "returns false for input string beginning with a lower case letter" do
        expect(propersentence("this is not a correct sentence.")).to eq false
    end

    it "returns false for input string ending with a letter and no punctuation" do
        expect(propersentence("Nor is this")).to eq false
    end
end