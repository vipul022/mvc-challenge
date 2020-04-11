require_relative "../model/task_model"
require_relative "../views/task_view"
require_relative "../model/user_model"
require "sqlite3"
class TaskController
    def initialize
      # @db = SQLite3::Database.new("../UserTask.db")
      @UserModel = UserModel.new("sam")
      @view = TaskView.new
    end
      

    def run(db)
       @db = db
       add_user_to_db 
        case selection = @view.read_menu
         when 1
          create_task
        when 2
          view_task  
        when 3
          update_a_task
        when 4
          delete_task 
        else 
          puts "Please enter valid input"  
        end
      
    end

    def create_task
        task_to_create = @view.enter_task
        @db.execute("INSERT INTO task (name, user_id) VALUES ('#{task_to_create}', 1)")
       task_object = TaskModel.new( task_to_create)
        @UserModel.tasks <<  task_object
        # p  result = @UserModel.tasks

    end
# adding user to db
    def add_user_to_db 
        @db.execute("INSERT INTO user (name) VALUES ('#{@UserModel.name}')")
    end

    def view_task
    #this command will display tasks which are stored in db
        view_result = @db.execute("SELECT * FROM task")
        p view_result
        # p result = @UserModel.tasks

    end

    def update_a_task
        view_task 
        selection = @view.task_to_update
        task_new =  @view.new_task
        @db.execute("UPDATE task
          SET name = '#{task_new}'
          WHERE id = '#{selection}'
        ")
        view_task

    end

    def delete_task
        task_delete = @view.task_to_delete
        @db.execute("DELETE FROM task 
        WHERE id = '#{task_delete}' ")
        view_task
    end
    
end 