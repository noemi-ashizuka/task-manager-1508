require_relative "view"
require_relative "task"

class Controller
  # state
  def initialize(repository)
    @repo = repository
    @view = View.new
  end
  # behaviour
  def list
    display_tasks
  end

  def add
    # CONTROLLER NEVER PUTS/GETS
    # get a user provided description from the view
    description = @view.ask_for_description # string
    # Create a new task (Task.new)
    task = Task.new(description)
    # Add the task to the repo
    @repo.create(task)
  end

  def mark_as_done
    # display the tasks
    display_tasks
    # ask the view to ask the user for an index
    index = @view.ask_for_index
    # ask the repository to give us the task using the index
    task = @repo.find(index) # instance
    # mark the task
    task.mark_as_done!
  end

  def remove
    display_tasks
    # ask the view for index
    index = @view.ask_for_index
    # tell the repo to delete the task
    @repo.destroy(index)
  end

  private

  def display_tasks
     # Get tasks from the repository
     tasks = @repo.all
     # send them to the view to display
     @view.display(tasks)
  end
end