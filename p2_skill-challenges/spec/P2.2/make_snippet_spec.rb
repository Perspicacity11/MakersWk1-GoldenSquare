require 'make_snippet'

RSpec.describe "method called make_snippet that takes a string as an argument and returns the first five words and then a '...' if there are more than that" do

    it "recieves a nine word string and snips to first five words with an ellipsis" do
        expect(make_snippet("This is a sentence of longer than five words")).to eq "This is a sentence of..."
    end

    it "recieves a sixteen word string and snops to first five words with an ellipsis" do
    expect(make_snippet("I am trying to write a sixteen word sentence to test this method but I cannot")).to eq "I am trying to write..."
    end

    context "string provided isn't long enough to be snipped" do
    it "fails" do
    expect { make_snippet("excel") }.to raise_error "Sentence not long enough"
    end
    end

end