# require gems
require 'sinatra'
require 'sinatra/reloader' if development?
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

=begin

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

=end

# write a GET route that adds a 'contact'
get '/contact' do
	"Jim Miller<br>
	 650 Woodbine Dr<br>
	 Carmel, IN 46033"
end

# write a GET route that takes a query parameter and returns "Good Job, 'name'"
=begin
get '/' do
	name = params[:name]
	if name
		"Good job, #{name}!"
	else
		"Good job you!"
	end
end
=end

# write a GET rout that adds 2 numbers provided by the user
get '/:num_1/+/:num_2' do
	ans = params[:num_1].to_i + params[:num_2].to_i
  "#{params[:num_1]} + #{params[:num_2]} = #{ans}"
end

