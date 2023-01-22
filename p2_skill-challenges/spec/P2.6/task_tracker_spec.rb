require 'task_tracker'

RSpec.describe TaskTracker do

    it "add two tasks to the tracker and then lists them when read method is called" do
        newlist = TaskTracker.new
        newlist.add("Dishes")
        newlist.add("Washing up")
        expect(newlist.read).to eq "1. Dishes | 2. Washing up"
    end

    it "add four tasks to the tracker and then lists them when read method is called" do
        newlist = TaskTracker.new
        newlist.add("Dishes")
        newlist.add("Washing up")
        newlist.add("Walk the dog")
        newlist.add("Cut the grass")
        expect(newlist.read).to eq "1. Dishes | 2. Washing up | 3. Walk the dog | 4. Cut the grass"
    end

    it "add four tasks to the tracker and then lists them when read method is called" do
        newlist = TaskTracker.new
        newlist.add("Dishes")
        newlist.add("Washing up")
        newlist.add("Walk the dog")
        newlist.add("Cut the grass")
        newlist.mark_complete(2)
        expect(newlist.read).to eq "1. Dishes | 3. Walk the dog | 4. Cut the grass"
    end

    it "fails when read method called with no tasks having been added" do
        newlist = TaskTracker.new
        expect{ newlist.read }.to raise_error "No tasks added"
    end
end