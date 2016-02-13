require "rspec"
require_relative "ruby_file"

#New Class ToDoItem
# Story: As a developer, I can create a ToDoItem.
describe ToDoItem do
  it "can create a ToDoItem class" do
    expect{ToDoItem.new}.to_not raise_error
  end

  # creates a new todo item ToDoItem.new is a method to create a new item
  # As a developer, I can give a ToDoItem a title and retrieve (getter) it.
  it "can have a title" do
    item = ToDoItem.new
    expect{item.title}.to_not raise_error
  end

  # this method creates a item and assigns a title
  it "can retrieve the title" do
    item = ToDoItem.new
    item.title=("NewTitle")
    expect(item.title).to eq "NewTitle"
  end

  # Story: As a developer, I can give a ToDoItem a description and retrieve it(getter).
  it "can have a description" do
    item = ToDoItem.new
    expect{item.description}.to_not raise_error
  end

  #this it statement set the description to a the string "NewDescription"
  it "can retrieve the description" do
    item = ToDoItem.new
    item.description = "NewDescription"
    expect(item.description).to eq "NewDescription"
  end

  # Story: As a developer, I can print a ToDoItem with field labels and values.
  it "can print an item" do
    item = ToDoItem.new
    item.title = "myTitle"
    item.description = "myDescription"
    expect{item.print}.to_not raise_error
    expect(item.print).to be_a String
    expect(item.print).to eq "Title: myTitle Description: myDescription Not Done"
    item.title = "myTitleAlso"
    item.description = "myDescription yo!"
    expect{item.print}.to_not raise_error
    expect(item.print).to be_a String
    expect(item.print).to eq "Title: myTitleAlso Description: myDescription yo! Not Done"
  end

  #Story: As a developer, I can mark a ToDoItem done.
  it "can be marked done" do
    item = ToDoItem.new
    expect{item.mark_done}.to_not raise_error
  end

  #Story: As a developer, when I print a ToDoItem is done status is shown.
  it "can print the completion of an item" do
    item = ToDoItem.new
    expect(item.print).to include("Not Done")
    item.mark_done
    expect(item.print).to include("Done")
  end
end # the ToDoItem end

# Story: As a developer, I can add all of my ToDoItems to a ToDoList.
describe ToDoList do
  it "Can create a new ToDoList" do
    expect{ToDoList.new}.to_not raise_error
  end

  it "can add ToDoItems" do
    list = ToDoList.new
    expect{list.add_item(ToDoItem.new)}.to_not raise_error
  end

  #Story: As a developer with a ToDoList, I can show all the completed items.
  it "can show completed items on list" do
    list = ToDoList.new
    item1 = ToDoItem.new
    item1.mark_done
    item2 = ToDoItem.new
    list.add_item(item1)
    list.add_item(item2)
    item1.title = "title1"
    item2.title = "title2"
    item1.description = "description1"
    item2.description = "description2"
    item3 = ToDoItem.new
    item3.title = "title3"
    item3.description = "description3"
    item3.mark_done
    list.add_item(item3)

    # testing for the method show_completed to include the string indicating that the item in the todolist has been complete
    expect(list.show_completed).to include "Title: title1 Description: description1 Done"

    # testing the same as above but for title 3
    expect(list.show_completed).to include "Title: title3 Description: description3 Done"

    #Story: As a developer with a ToDoList, I can show all the not completed items.
    # testing for the method show_incomplete to include the string indicating that the item(item2) in the todolist has not been completed.
    expect(list.show_incomplete).to include "Title: title2 Description: description2 Not Done"
  end
end # the ToDOList end

#New Class DueDate
describe DueItem do
  #Story: As a developer, I can create a to do item with a due date, which can be changed. Hint: Use the Date class
  #test to create a new due date class
  it "can create a to do item with a due date" do
    expect{DueItem.new}.to_not raise_error
  end

  #test to create a method to change the due date of a to do item
  it "can change the due date of a ToDo item" do
    # create a new due date for an inherited item in the ToDoItem class
    item = DueItem.new
    item.due_date = Date.today
    expect(item.due_date).to eq Date.today
  end

  # Story: As a developer, I can print an item with a due date with field labels and values.
  it "can print and item with a due date" do
    # creating a new due item and assigns to the item variable
    item = DueItem.new
    # it setting a new date to an item(today)
    item.due_date = Date.today
  end
end # The DueDate end
