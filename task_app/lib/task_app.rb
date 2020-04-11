require "sqlite3"
require_relative "./task_app/controllers/task_controller"


# create a new database or if it already exists connect to it
db = SQLite3::Database.new("UserTask.db")
# drop a table
#  db.execute("DROP TABLE user")
#  db.execute("DROP TABLE task")
# creating table
# db.execute("CREATE TABLE user (
#     id INTEGER PRIMARY KEY,
#     name TEXT NOT NULL
# )")

# db.execute("CREATE TABLE task (
#     id INTEGER PRIMARY KEY,
#     name TEXT NOT NULL,
#     user_id INTEGER NOT NULL
# )")
task = TaskController.new
 task.run(db)