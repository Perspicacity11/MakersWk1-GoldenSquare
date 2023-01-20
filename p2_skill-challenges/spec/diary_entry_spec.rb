require 'diary_entry'

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
end