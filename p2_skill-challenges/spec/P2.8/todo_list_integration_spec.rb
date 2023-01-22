require 'todo'
require 'todo_list'

RSpec.describe 'todo list integation' do

before(:each) do
    @first_list = TodoList.new
    end

it "instantiates a new list, adds a task to it and returns that task" do
    item1 = Todo.new("Cut the grass")
    @first_list.add(item1)
    expect(@first_list.incomplete).to eq [item1]
    end

it "instantiates a new list, adds three tasks and returns those tasks" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    expect(@first_list.incomplete).to eq [item1, item2, item3] 
    end

it "adds three tasks and returns the full list as incomplete" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    item1.mark_done!
    expect(@first_list.incomplete).to eq [item2, item3] 
    end

it "adds three tasks and returns one completed" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    item1.mark_done!
    expect(@first_list.complete).to eq [item1]
    end

it "testing give up method, should mark all todos as complete" do
    item1 = Todo.new("Cut the grass")
    item2 = Todo.new("Go to the shops")
    item3 = Todo.new("Walk the dog")
    @first_list.add(item1)
    @first_list.add(item2)
    @first_list.add(item3)
    @first_list.give_up!
    expect(@first_list.complete).to eq [item1, item2, item3]
    end
end