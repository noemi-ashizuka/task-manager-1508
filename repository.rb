class Repository
  # state
  def initialize
    @tasks = [] # an array of task instances
  end
  # behaviour

  def all
    @tasks
  end

  def create(task)
    @tasks << task # instance
  end

  def destroy(index)
    @tasks.delete_at(index)
  end

  def find(index)
    @tasks[index]
  end
end
