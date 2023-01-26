require 'catfacts'

RSpec.describe CatFacts do

    it "returns a cat fact" do
        fakerequester = double :requester
        catfact = CatFacts.new(fakerequester)
        allow(fakerequester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Cats and kittens should be acquired in pairs whenever possible as cat families interact best in pairs.","length":102}')
        expect(catfact.provide).to eq "Cat fact: Cats and kittens should be acquired in pairs whenever possible as cat families interact best in pairs."
    end

end







        # {"fact":"Cats and kittens should be acquired in pairs whenever possible as cat families interact best in pairs.","length":102}%                                                                                                              