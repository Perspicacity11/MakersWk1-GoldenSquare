require 'secret_diary'

RSpec.describe SecretDiary do

    it "constructs, adds a new fake diary and attempts to read but is blocked" do
        fakediary = double(:diary, contents: "Fake diary contents")
        secretdiary1 = SecretDiary.new(fakediary)
        expect(secretdiary1.read).to eq "GO AWAY"
    end

    it "constructs, adds a new fake diary, unlocks and reads back" do
    fakediary = double(:diary, contents: "Fake diary contents to be read")
    secretdiary1 = SecretDiary.new(fakediary)
    secretdiary1.unlock
    expect(secretdiary1.read).to eq [fakediary]
end
end