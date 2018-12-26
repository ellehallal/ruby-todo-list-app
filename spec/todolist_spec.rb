require 'todolist'

RSpec.describe ToDoList do

  todo_list = nil
  before(:each) do
    todo_list = ToDoList.new()
  end


  it "creates a new instance of the ToDoList class" do
    expect(todo_list.is_a?Object).to eq(true)
  end

  it "adds a new todo as a hash to @todos" do
    todo_list.add_new_todo("Buy milk")
    expect(todo_list.todos[0]).to eq({
      todo: "Buy milk",
      completed: false,
      id: 0,
    })
  end
end

RSpec.describe ToDoList do

  todo_list = nil
  before(:each) do
    todo_list = ToDoList.new()
    todo_list.add_new_todo("Buy milk")
    todo_list.add_new_todo("Pick up kids")
  end

  it "edits the description of an existing a todo" do
    todo_list.edit_todo(0, "Food shopping")
    expect(todo_list.todos[0][:todo]).to eq("Food shopping")
  end

  it "deletes an existing todo" do
    todo_list.delete_todo(1)
    expect(todo_list.todos).not_to include("Pick up kids")
  end

  it "marks a todo as complete - @completed = true" do
    todo_list.complete_todo(0)
    expect(todo_list.todos[0][:completed]).to eq(true)
  end

  it "marks a todo as not complete - @completed = false" do
    todo_list.complete_todo(1)
    todo_list.incomplete_todo(1)
    expect(todo_list.todos[0][:completed]).to eq(false)
  end



end
