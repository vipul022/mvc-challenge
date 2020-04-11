class TaskView
    def read_menu
    puts"1. Create a task"
    puts"2. View your tasks"
    puts"3. Update your task"
    puts"4. Delete a task"
    gets.chomp.to_i
    end

      
    def enter_task
        puts"Enter the task you want to create"
        gets.chomp
    end

    def task_to_update
        puts"Enter the task id you want to update"
        gets.chomp.to_i
    end

    def new_task
        puts "Enter the new task"
        gets.chomp
    end

    def task_to_delete
        puts"Enter the task id you want to delete"
        gets.chomp.to_i
    end
 end     