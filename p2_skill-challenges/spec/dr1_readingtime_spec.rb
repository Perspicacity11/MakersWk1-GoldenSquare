require 'dr1_readingtime'

RSpec.describe 'programme which returns total reading time in seconds for text provided as argument' do
    it "recieves twenty word test text and returns 6" do
        expect(readingtime("This is an example piece of text consisting of twenty words separated with spaces for use in the readingtime programme")).to eq 6
    end

    it "recieves a two-thousand word test text and returns 600" do
        expect(readingtime(("Test "*2000))).to eq 600
    end
end