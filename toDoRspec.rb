require 'rspec'
require_relative 'toDo'

# Story: As a developer, I can create a ToDoItem.
describe ToDoItem do
  # Tests ToDoItem Class
  it "Should Create a Class called ToDoItem" do
    expect{ToDoItem}.to_not raise_error
  end

  #Story: As a developer, I can give a ToDoItem a title and retrieve it.
  it "the title for a ToDo should show a string" do
    #item1 is the new item variable
    item1 = ToDoItem.new
    #test to determine if the title new item(item1) is a String
    expect(item1.title).to be_a String
  end

  # Story: As a developer, I can give a ToDoItem a description and retrieve it.
  it "Test ToDoItem for an item desciption" do
    #item1 is the new item variable
    item1 = ToDoItem.new
    #test to determine if the the description is a String
    expect(item1.description).to be_a String
  end
end

Story: As a developer, I can print a ToDoItem with field labels and values.
