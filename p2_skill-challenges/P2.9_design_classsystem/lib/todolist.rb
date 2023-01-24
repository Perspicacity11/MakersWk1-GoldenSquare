require 'todoitems'

class TodoList
  def initialize
    @todo_list = []
  end
  
  def add(todo)
    @todo_list << todo
  end
  
  def incomplete
    @todo_list.reject do |todo|
    todo.done? 
    end
  end
  
  def complete
    @todo_list.select do |todo|
    todo.done? 
    end
  end
   
  def all_complete
    @todo_list.map do |todo|
      todo.mark_done!
    end
  end
end