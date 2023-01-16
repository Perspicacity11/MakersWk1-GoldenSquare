require 'check_codeword'

RSpec.describe "grants or denies access based on 'horse' as codeword" do
    it "returns entry message when passed horse as argument" do
        access_granted = check_codeword("horse")
        expect(access_granted).to eq "Correct! Come in."
    end

    it "returns a 'nearly' message when passed an argument starting with H and ending with E" do
        almost = check_codeword("hearse")
        expect(almost).to eq "Close, but nope."
    end

    it "returns WRONG when passed the incorrect codeword" do
        access_denied = check_codeword("salmon")
        expect(access_denied).to eq "WRONG!"
end
end 
