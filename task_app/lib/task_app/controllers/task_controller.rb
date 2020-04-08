require_relative "../model/task_model"
require_relative "../views/task_view"
require_relative "../model/user_model"
class TaskController
    def initialize
      @model = TaskModel.new
      @modelUser = UserModel.new
      @view = TaskView.new
    end

    def run
      "It's working!"
    end
end 