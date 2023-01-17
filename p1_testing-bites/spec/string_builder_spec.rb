
require "string_builder"

RSpec.describe StringBuilder do
  it "Initialize an empty string and returns the StringBuilder object" do
    string = StringBuilder.new
    expect(string.output).to eq ""
  end

  it "Receives a string and returns the length of the string" do
    string = StringBuilder.new.add('')
    expect(string.size).to eq 0
  end

  it "Receives a string and returns the length of the string" do
    string = StringBuilder.new.add('frog')
    expect(string.size).to eq 4
  end

  it "Initialize a string, add 2 times, and return the StringBuilder object" do
    string = StringBuilder.new
    string.add('frog')
    string.add(' and toad')
    expect(string.output).to eq "frog and toad"
  end

  it "Initialize a string, add 2 times, and return the size of the string" do
    string = StringBuilder.new
    string.add('frog')
    string.add(' and toad')
    expect(string.size).to eq 13
  end
end