require 'diary'
require 'secret_diary'

RSpec.describe "integration" do
    it "constructs, adds a new diary and attempts to read but is blocked" do
    diary1 = Diary.new("Contents of diary one for addition to secret diary one")
    secretdiary1 = SecretDiary.new(diary1)
    expect(secretdiary1.read).to eq "GO AWAY"
end

it "constructs, adds a new diary, unlocks and reads" do
    diary1 = Diary.new("Contents of diary one for addition to secret diary one")
    secretdiary1 = SecretDiary.new(diary1)
    secretdiary1.unlock
    expect(secretdiary1.read).to eq [diary1]
end
end