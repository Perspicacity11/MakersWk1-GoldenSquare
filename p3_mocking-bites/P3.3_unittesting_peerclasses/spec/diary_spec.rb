require 'diary'

RSpec.describe Diary do

    it "opens a new diary with an entry and reads back the entry" do
        diary1 = Diary.new("These are the contents of Diary 1")
        expect(diary1.read).to eq "These are the contents of Diary 1"
    end
    
end