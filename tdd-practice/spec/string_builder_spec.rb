
require "string_builder"

RSpec.describe StringBuilder do
  it "Initialize an empty string and returns the StringBuilder object" do
    string = StringBuilder.new
    result = string.output
    expect(result).to eq ""
  end

  it "Receives a string and returns the length of the string" do
    string = StringBuilder.new
    string.add('')
    result = string.size
    expect(result).to eq 0
  end

  it "Receives a string and returns the length of the string" do
    string = StringBuilder.new
    string.add('frog')
    result = string.size
    expect(result).to eq 4
  end

  it "Initialize a string, add 2 times, and return the StringBuilder object" do
    string = StringBuilder.new
    string.add('frog')
    string.add(' and toad')
    result = string.output
    expect(result).to eq "frog and toad"
  end

  it "Initialize a string, add 2 times, and return the size of the string" do
    string = StringBuilder.new
    string.add('frog')
    string.add(' and toad')
    result = string.size
    expect(result).to eq 13
  end
end