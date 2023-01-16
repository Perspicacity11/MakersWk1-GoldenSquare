require 'gratitudes'

RSpec.describe Gratitudes do
    it "initialises an empty array" do
        good_things = Gratitudes.new
        results = good_things.format
        expect(results).to eq "Be grateful for: "
    end

    it "returns string with one good thing" do
        good_things = Gratitudes.new
        string = good_things.add("dogs")
        results = good_things.format
        expect(results).to eq "Be grateful for: dogs"
    end

    it "returns string with three good things" do
        good_things = Gratitudes.new
        good_things.add("dogs")
        good_things.add("cats")
        good_things.add("books")
        results = good_things.format
        expect(results).to eq "Be grateful for: dogs, cats, books"
    end
  end