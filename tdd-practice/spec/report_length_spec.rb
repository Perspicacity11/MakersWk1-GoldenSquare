require 'report_length'

RSpec.describe "returns number of character of string given as argument" do
    it "returns 18 when given the string 'this is a sentence'" do
        string = report_length("this is a sentence")
        expect(string). to eq "This string was 18 characters long"
    end
end