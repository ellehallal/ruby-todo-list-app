require 'sinatra'

class ToDoList
  attr_accessor :todos

  def initialize
    @todos = []
  end

  def add_new_todo(todo)
    newtodo = NewToDo.new(todo)
    @todos << newtodo.new_todo
  end

  def edit_todo(index, todo)
    @todos[index.to_i][:todo] = todo
  end

  def delete_todo(index)
    @todos.delete_at(index.to_i)
  end

  def complete_todo(index)
    @todos[index.to_i][:completed] = true
  end

  def incomplete_todo(index)
    @todos[index.to_i][:completed] = false
  end

  def clear_completed_todos
    @todos.delete_if do |item|
      item[:completed] == true
    end
  end
end
