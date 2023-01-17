require 'count_words'

RSpec.describe "A method called count_words that takes a string as an argument and returns the number of words in that string" do

    it "takes an empty string as argument and returns zero" do
        expect(count_words("")).to eq 0
    end

    it "takes a string as argument, splits the string into an array, and returns the number 4" do
        expect(count_words("This is a sentence")).to eq 4
    end

    it "takes a longer example string, splits the string into an array, and returns the number 16" do
        expect(count_words("I am trying to write a sixteen word sentence to test this method but I cannot")).to eq 16
    end
end
