require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

shopping = Task.new("Do shopping")
dog = Task.new("Feed the dog")
repo = Repository.new
# view = View.new
controller = Controller.new(repo)
# p controller
# p repo
repo.create(shopping)
repo.create(dog)
router = Router.new(controller)
router.run
# p shopping
# p dog
# p repo
# repo.destroy(0)
# p repo
# p repo.all
# view.display(repo.all)
# controller.mark_as_done
# controller.remove
# p repo.all
# controller.list


