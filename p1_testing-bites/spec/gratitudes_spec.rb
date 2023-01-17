require 'gratitudes'

RSpec.describe Gratitudes do
    it "initialises an empty array" do
        expect(Gratitudes.new.format).to eq "Be grateful for: "
    end

    it "returns string with one good thing" do
        good_things = Gratitudes.new
        good_things.add("dogs")
        expect(good_things.format).to eq "Be grateful for: dogs"
    end

    it "returns string with three good things" do
        good_things = Gratitudes.new
        good_things.add("dogs")
        good_things.add("cats")
        good_things.add("books")
        expect(good_things.format).to eq "Be grateful for: dogs, cats, books"
    end
  end