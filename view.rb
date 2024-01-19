class View
  # view doesn't have a state/initialize
  def display(tasks)
    tasks.each_with_index do |task, index|
      mark = task.done? ? "X" : " "
      puts "#{index + 1} - [#{mark}] - #{task.description}"
    end
  end

  def ask_for_description
    puts "What is your task?"
    gets.chomp # string
  end

  def ask_for_index
    puts "Which number?"
    gets.chomp.to_i - 1
  end
end
