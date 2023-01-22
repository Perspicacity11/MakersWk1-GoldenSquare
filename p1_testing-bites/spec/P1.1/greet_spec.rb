require 'greet'

RSpec.describe "basic greeting function" do
    it "returns a string greeting the name provided as argument" do
        expect(greet("Sam")). to eq "Hello, Sam!"
    end
end