require 'debugging_exercises1'

RSpec.describe "code to debug" do
    it "works" do
        expect(encode("theswiftfoxjumpedoverthelazydog", "secretkey")).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end

    it "decodes" do
        expect(decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")).to eq "theswiftfoxjumpedoverthelazydog"
    end
end