require 'diary'
require 'todolist'

RSpec.describe Diary do
    it "constructs" do
        first_diary = Diary.new
    end
 
    it "loads a todolist from diary" do 
    @diary1 = Diary.new
    first_list = TodoList.new
    item1 = Todo.new("Cut the grass")
    first_list.add(item1)
    expect(@diary1.load_todolist(first_list)).to eq [item1] #I WANT THIS TO EQUATE TO THE STRING TASK ITSELF AND NOT THE OBJECT
    end
end   