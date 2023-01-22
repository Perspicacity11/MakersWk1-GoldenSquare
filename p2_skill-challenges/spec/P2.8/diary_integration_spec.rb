require 'diary'
require 'diary_entry'

RSpec.describe "diary integration" do

before(:each) do
    @diary1 = Diary.new
end

    it "adds one entry and returns them" do
        monday = DiaryEntry.new("Monday", "Today I ate breakfast")
        @diary1.add(monday)
        expect(@diary1.all).to eq [monday]
    end
 
    it "adds three entries and returns them" do
        monday = DiaryEntry.new("Monday", "Today I ate breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today filed my taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.all).to eq [monday, tuesday, wednesday]
    end

    it "adds one entry and counts words" do
        monday = DiaryEntry.new("Monday", "Today I ate breakfast")
        @diary1.add(monday)
        expect(@diary1.count_words).to eq 4
    end

    it "adds three entries and returns the total word count" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today I filed my taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.count_words).to eq 15
    end

    it "adds three entries and returns the total reading time when provided a WPM of 3" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today I filed my taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.reading_time(3)).to eq 5
        end    

    it "adds three entries and returns the second entry based on it corresponding most closely to the WPM and time available provided" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast and went to the bank to open an account")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog around")
        wednesday = DiaryEntry.new("Wednesday", "Today taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.find_best_entry_for_reading_time(2, 4)).to eq tuesday
    end

    it "adds three entries and returns the third entry based on it corresponding most closely to the WPM and time available provided" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast and went to the bank to open an account")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog around the town")
        wednesday = DiaryEntry.new("Wednesday", "Today taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.find_best_entry_for_reading_time(2, 1)).to eq wednesday
    end

    it "adds a 100-word diary entry and returns five twenty-word chunks of the entry in sequence before restarting" do
        thursday = DiaryEntry.new("Thursday", "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a justo rhoncus, ornare mi in, suscipit felis. Donec quis massa efficitur, dictum nunc sed, aliquam neque. Aenean risus sem, auctor et gravida eu, hendrerit at orci. In mattis enim nec sapien molestie, vel tincidunt elit imperdiet. Nam tincidunt lacus non congue scelerisque. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus porttitor, diam eget pretium dapibus, tellus purus ultrices leo, imperdiet porttitor diam tellus eget libero. Morbi scelerisque eros sed iaculis aliquam. Donec et nisl elementum, commodo tellus.")
        @diary1.add(thursday)
        thursday.count_words
        expect(thursday.reading_chunk(20, 1)).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a justo rhoncus, ornare mi in, suscipit felis. Donec quis massa"
        expect(thursday.reading_chunk(20, 1)).to eq "efficitur, dictum nunc sed, aliquam neque. Aenean risus sem, auctor et gravida eu, hendrerit at orci. In mattis enim nec"
        expect(thursday.reading_chunk(20, 1)).to eq "sapien molestie, vel tincidunt elit imperdiet. Nam tincidunt lacus non congue scelerisque. Orci varius natoque penatibus et magnis dis parturient"
        expect(thursday.reading_chunk(20, 1)).to eq "montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus porttitor, diam eget pretium dapibus, tellus purus"
        expect(thursday.reading_chunk(20, 1)).to eq "ultrices leo, imperdiet porttitor diam tellus eget libero. Morbi scelerisque eros sed iaculis aliquam. Donec et nisl elementum, commodo tellus."
        expect(thursday.reading_chunk(20, 1)).to eq "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse a justo rhoncus, ornare mi in, suscipit felis. Donec quis massa"
    end
end