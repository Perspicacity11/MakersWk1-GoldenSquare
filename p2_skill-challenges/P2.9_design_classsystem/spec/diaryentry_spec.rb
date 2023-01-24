require 'diaryentry'

RSpec.describe DiaryEntry do
    it "instantiates" do
        entry1 = DiaryEntry.new("Monday", "Today I ate breakfast")
    end

    it "adds an entry and counts its words" do
        entry1 = DiaryEntry.new("Monday", "Today I ate breakfast")
        entry1.count_words
    end
 
    it "adds three entries and returns the read time when provided a WPM of 3" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today I filed my taxes")
        expect(monday.reading_time(5)).to eq 1
        expect(tuesday.reading_time(5)).to eq 1
        expect(wednesday.reading_time(5)).to eq 1
    end

    it "tests the extract number function" do
        monday = DiaryEntry.new("Monday", "I met with the creative director, Mark (contact at 07626338122 )")
        tuesday = DiaryEntry.new("Tuesday", "I had lunch with the client VP, Alexandra (contact at 07622100700 )")
        wednesday = DiaryEntry.new("Wednesday", "I went for drinks with some friends, met a nice guy, got his number ( 07110771519 )")
        expect(monday.extract_number).to eq "07626338122"
    end
end 