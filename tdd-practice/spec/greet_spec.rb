require 'greet'

RSpec.describe "basic greeting function" do
    it "returns a string greeting the name provided as argument" do
        string = greet("Sam")
        expect(string). to eq "Hello, Sam!"
    end
end