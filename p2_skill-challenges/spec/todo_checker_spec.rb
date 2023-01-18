require 'todo_checker'

RSpec.describe "programme for checking an input text for the presence of string '#T0D0'" do
    it "recieves a text and returns false due to lack of requisite string" do
        expect(todo_checker("This is example text.")).to eq false
    end

    it "recieves a text and returns true in presence of requisite string" do
        expect(todo_checker("This text contains the #T0D0 string")).to eq true
    end
end