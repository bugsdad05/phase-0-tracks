=begin
	
- create a module that allows people to enter christmas wish list items
	* should verify wisher id - use 'vampires' code
	* should verify no more than 3 items on list per person - use 'genie' code
	* if good push to database

- create a module for Santa to verify 'naughty or nice'
   * should verify Santa id - use 'vampires' code
   * toggle 'naughty/nice ' status
   * push to database

- create user UI
- create Santa UI

NOT REVIEW READY
=end

# Require gem(s)
require 'sqlite3'
require 'faker'

# create SQLite3 database
santa.db = SQLite3::Database.new("santa.db")
santa.db.results_as_hash = true

# create a users table
create_user_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS user(
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255),
    age INTEGER,
  )
SQL

# create a santa table
create_santa_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS santa(
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    status BOOLEAN,
  )
SQL

# create a 'JOIN' table
create_wish_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS wish(
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    santa_id INTEGER,
    wish VARCHAR(255),
  )
SQL



