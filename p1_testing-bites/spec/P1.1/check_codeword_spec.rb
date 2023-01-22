require 'check_codeword'

RSpec.describe "grants or denies access based on 'horse' as codeword" do
    it "returns entry message when passed horse as argument" do
        expect(check_codeword("horse")).to eq "Correct! Come in."
    end

    it "returns a 'nearly' message when passed an argument starting with H and ending with E" do
        expect(check_codeword("hearse")).to eq "Close, but nope."
    end

    it "returns WRONG when passed the incorrect codeword" do
        expect(check_codeword("salmon")).to eq "WRONG!"
end
end 
