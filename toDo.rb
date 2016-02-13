#Story: As a developer, I can create a ToDoItem.
class ToDoItem
  # method to create new todo objectives inside the toDoItem class
  def initialize(title = '', description = '')
    # title is a local variable for the title of an item
  @title = title
  @description = description
  end

  # Story: As a developer, I can give a ToDoItem a title and retrieve(return) it.
  # method for returning the title of an item. title is a label
  def title
    # @title is a value
    return @title
    # this tells us to puts the title(label) with the @title(value) of the title. Puts after return because you need @title (a value) first to define what the value is
    puts "Title:" + @title
  end

  # Story: As a developer, I can give a ToDoItem a description and retrieve it. description is a label
  def description
    # this tells us to puts the title(label) with the @title(value) of the title.
    puts "description:" + @title
    # @description is a value
    return @description
  end
end

puts "Title:" + @title
# Story: As a developer, I can print a ToDoItem with field labels and values. field label are titles and descriptions and values are represented by the @title and @description the values of the label is defined within the perameters.
