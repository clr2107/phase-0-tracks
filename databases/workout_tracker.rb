

#Create a workout tracker program which logs the user's workouts each day.
#Create database which has data:
  #1. Kind of workout (e.g. running, biking, swimming)
  #2. Duration (minutes/hours)
  #3. Any notes about the workout -- if it was good, bad etc.
#Create ruby program which asks the user for input each day and prints all of the data at the end.

require 'sqlite3'

db = SQLite3::Database.new("workouts.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS workouts(
    id INTEGER PRIMARY KEY,
    date_complete DATE,
    type VARCHAR(255),
    duration INT,
    notes VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('1-1-2017', 'swimming', 30, '25 laps')")

db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('1-2-2017', 'running', 30, 'knee injury')")

db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('1-3-2017', 'biking', 40, 'no notes')")

workouts = db.execute("SELECT * FROM workouts")
workouts.each do |workout|
  puts "#{workout['date_complete']}, #{workout['type']}, #{workout['duration']}, #{workout['notes']}"
end

#Get user input
puts "Enter your workout data."
puts "Enter the date."
date_complete = gets.chomp
puts "Enter the type of workout."
type = gets.chomp
puts "Enter the duration of the workout."
duration = gets.chomp
puts "Enter any notes."
notes = gets.chomp

# #Add entry to database based on user input
def add_entry(db, date_complete, type, duration, notes)
  db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('#{date_complete}', '#{type}', #{duration}, '#{notes}')")
  puts add_entry
end




