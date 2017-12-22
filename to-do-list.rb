require "pp"
require_relative "task"

class TodoList

  def initialize
    @tasks = []
  end

  def add_task(description, due_date)
    new_task = Task.new(description, due_date)
    @tasks << new_task
  end

  def tasks
    @tasks
  end

end

my_list = TodoList.new

my_list.add_task("get groceries", "Dec 22 2017")
my_list.add_task("complete Mars Rover assignment", "Dec 27 2017")
my_list.add_task("Drink beer", "Dec 22 2017")

pp my_list.tasks
# pp my_list.tasks[2]

# since I have writers for the Task class, might as well try modifying
# one of the descriptions
my_list.tasks[2].description = "Drink lots of beer"

pp my_list.tasks
