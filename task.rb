class Task
  attr_reader :description
  # state
  def initialize(description)
    @description = description # string
    @done = false
  end
  # behaviour
  def mark_as_done!
    @done = true # !@done
  end

  def done?
    @done
  end
end
