require 'diary'
require 'diaryentry'
require 'todoitems'
require 'todolist'

RSpec.describe "diary integration" do

before(:each) do
    @diary1 = Diary.new
end

    it "testing add and all: adds one entry and returns them" do
        monday = DiaryEntry.new("Monday", "Today I ate breakfast")
        @diary1.add(monday)
        expect(@diary1.all).to eq [monday]
    end
 
    it "testing add and all: adds three entries and returns them" do
        monday = DiaryEntry.new("Monday", "Today I ate breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today filed my taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.all).to eq [monday, tuesday, wednesday]
    end 
 
    it "testing count words: adds one entry and counts words" do
        monday = DiaryEntry.new("Monday", "Today I ate breakfast")
        @diary1.add(monday)
        expect(@diary1.count_words).to eq 4
    end

    it "testing count words: adds three entries and returns the total word count" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today I filed my taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.count_words).to eq 15
    end

    it "testing reading time: adds three entries and returns the total reading time when provided a WPM of 3" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog")
        wednesday = DiaryEntry.new("Wednesday", "Today I filed my taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.reading_time(3)).to eq 5
        end    

    it "testing find best entry: adds three entries and returns the second entry based on it corresponding most closely to the WPM and time available provided" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast and went to the bank to open an account")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog around")
        wednesday = DiaryEntry.new("Wednesday", "Today taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.find_best_entry_for_reading_time(2, 4)).to eq tuesday
    end

    it "testing find best entry: adds three entries and returns the third entry based on it corresponding most closely to the WPM and time available provided" do
        monday = DiaryEntry.new("Monday", "Today I ate some breakfast and went to the bank to open an account")
        tuesday = DiaryEntry.new("Tuesday", "Today I walked the dog around the town")
        wednesday = DiaryEntry.new("Wednesday", "Today taxes")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.find_best_entry_for_reading_time(2, 1)).to eq wednesday
    end

    it "testing contact list: adds three diary entries and extracts the phone numbers from each" do
        monday = DiaryEntry.new("Monday", "I met with the creative director, Mark (contact at 07626338122 )")
        tuesday = DiaryEntry.new("Tuesday", "I had lunch with the client VP, Alexandra (contact at 07622100700 )")
        wednesday = DiaryEntry.new("Wednesday", "I went for drinks with some friends, met a nice guy, got his number ( 07110771519 )")
        @diary1.add(monday)
        @diary1.add(tuesday)
        @diary1.add(wednesday)
        expect(@diary1.contact_list).to eq ["07626338122", "07622100700", "07110771519"]
    end

    it "prints todolist" do
        first_list = TodoList.new
        item1 = Todo.new("Cut the grass")
        first_list.add(item1)
        expect(@diary1.load_todolist(first_list)).to eq [item1]
    end
end
# it "prints todolist with mocks" do
#     @first_list = TodoList.new
#     item1 = Todo.new("Cut the grass")
#     @first_list.add(item1)
#     expect(@diary1.load_todolist).to eq "Cut the grass"
# end
# end

RSpec.describe 'todo list integation' do

before(:each) do
    @first_list = TodoList.new
    end

it "testing add and incomplete: instantiates a new list, adds a task to it and returns that task" do
    item1 = Todo.new("Cut the grass")
    @first_list.add(item1)
    expect(@first_list.incomplete).to eq [item1]
    end

it "testing add and imcomplete: instantiates a new list, adds three tasks and returns those tasks" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    expect(@first_list.incomplete).to eq [item1, item2, item3] 
    end

it "testing mark done and incomplete: adds three tasks and returns the full list as incomplete" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    item1.mark_done!
    expect(@first_list.incomplete).to eq [item2, item3] 
    end

it "testing mark done and complete: adds three tasks and returns one completed" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    item1.mark_done!
    expect(@first_list.complete).to eq [item1]
    end

it "testing give up: testing all complete method, should mark all todos as complete" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    @first_list.all_complete
    expect(@first_list.complete).to eq [item1, item2, item3]
    end
end