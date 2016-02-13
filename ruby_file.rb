require 'date'
#New class ToDoItem
class ToDoItem
  #initialize method that assigns @mark_done to false
  def initialize
    #assigns false to the Instance variable @mark_done
    @mark_done = false
  end

  # method that assigns the parameters to the @title instance variable (setter)
  def title=(title)
    @title = title
  end

  #title method that returns @title (getter)
  def title
    @title
  end

  # method that assigns, what is in the parameters, to the @description instance variable (setter)
  def description=(description)
    @description = description
  end

  #method that returns the instance variable @description (getter)
  def description
    @description
  end

  #this method prints the field labels (Title) and values (Description)
  def print
    #checks the condition of the instance variable, and if it is true prin the following statement
    if @mark_done == true
      return "Title: " + @title.to_s + " " + "Description: " + @description.to_s + " Done"
      #if the instance variable (mark_done) is equal to true it will print the following string
    else
      return "Title: " + @title.to_s + " " + "Description: " + @description.to_s + " Not Done"
    end
  end

  # method that changes @mark_done to true
  def mark_done
    @mark_done = true
  end

  # method asking the items in the todolist if they are done. this acts a (getter) to compile the completed items
  def is_done?
    @mark_done
  end

end

#class to create a list of items to be done
class ToDoList
  def initialize
    @items = []
  end

  # method to add items @items is an instance variable which "shovels(<<)" the items into the
  def add_item(to_do_item)
    @items << to_do_item
  end

# method to show items that at completed
  def show_completed
    # @items(list(array) of items) where .select is selecting the completed items from the items array with the is_done? (getter) method, |x| is syntact for the place holder variable in block. .join is returning each item to be printed with a new line (/n)
    @items.select{|x| x.is_done?}.map{|x| x.print}.join("\n")
  end

  #method to go into the @items array, select only the elements that return (getter) a @mark_done of false, and prints them into an new array, separated by new lines ("\n").
  def show_incomplete
    @items.select{|x| x}.map{|x| x.print}.join("\n")
  end

end

# Creates a new class (DueDate) that inherits from the ToDoItem class
# method to create a due date for todo items
class DueItem < ToDoItem
  # method to returns a due date for todo items
  # methtod to assigns a due date (setter)
  def due_date= (date)
    @due_date = date
  end

# method that returns a due date with @date intance variable (getter)
  def due_date
    @due_date
  end

# Story: As a developer, I can print an item with a due date with field labels and values.
end
