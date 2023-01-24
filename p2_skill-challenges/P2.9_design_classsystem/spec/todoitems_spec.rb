require 'todoitems'

RSpec.describe Todo do
    it "initialises with a task and returns that task" do
        item1 = Todo.new("Cut the grass")
        expect(item1.task).to eq "Cut the grass"
    end

    it "initialises with three tasks and returns those tasks" do
        item1 = Todo.new("Cut the grass")
        item2 = Todo.new("Go to the shops")
        item3 = Todo.new("Walk the dog")
        expect(item1.task).to eq "Cut the grass"
        expect(item2.task).to eq "Go to the shops"
        expect(item3.task).to eq "Walk the dog"
    end

    it "adds a todo item and returns its done status as false" do
        item1 = Todo.new("Cut the grass")
        expect(item1.done?).to eq false
    end

    it "adds a todo item and returns its done status as false" do
        item1 = Todo.new("Cut the grass")
        item1.mark_done!
        expect(item1.done?).to eq true
    end
end 