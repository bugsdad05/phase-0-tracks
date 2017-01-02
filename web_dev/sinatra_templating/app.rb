# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# add table for new campuses
db.execute(<<-SQL
  CREATE TABLE IF NOT EXISTS campuses(
    id INTEGER PRIMARY KEY,
    city VARCHAR(10)
  )
SQL
)

# show students on the home page 
# add code to make campus available
get '/' do
  @students = db.execute("SELECT * FROM students")
  @campuses = db.execute("SELECT * FROM campuses")
  erb :home
end

get '/students/new' do
  erb :new_student
end

get '/students/update' do
  erb :update_student
end

get '/students/delete' do 
  erb :delete_student
end

#dump the entire database for testing
get '/students/dump_db' do
  @students = db.execute("SELECT * FROM students")
  erb :dump_db
end


# create new students via a form
post '/students/new' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# update an existing student via a form
post '/students/update' do
  db.execute("UPDATE students
                SET name = (?), campus = (?), age = (?)
                WHERE id = (?)",
                [params['name'], params['campus'], params['age'].to_i, params['id'].to_i]);
   redirect '/'
end

# delete a student via ID
post '/students/delete' do
  db.execute("DELETE FROM students WHERE id = (?)",[params['id'].to_i])
  redirect '/'
end

# add static resources