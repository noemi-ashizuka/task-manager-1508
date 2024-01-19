class Router
  # state
  def initialize(controller)
    @controller = controller
  end
  # behaviour
  def run
    loop do
      print_actions
      action = gets.chomp.to_i # integer
      dispatch(action)
    end
  end

  private

  def print_actions
    puts "---"
    puts "What do you want to do?"
    puts "1 - Display tasks"
    puts "2 - Add a task"
    puts "3 - Mark a task"
    puts "4 - Remove a task"
    puts "---"
  end

  def dispatch(action)
    case action
    when 1 then @controller.list
    when 2 then @controller.add
    when 3 then @controller.mark_as_done
    when 4 then @controller.remove
    else
      puts "Please type 1, 2, 3 or 4"
    end
  end
end