#Create a daily workout log program which logs the user's workouts each day.
#Create database which has data:
  #1: Date of workout.
  #2. Kind of workout (e.g. running, biking, swimming)
  #3. Duration (minutes/hours)
  #4. Any notes about the workout -- laps, mileage etc.
#Create ruby program which asks for user input and prints all of the data at the end.
#Additional challenges: 1) Allow user to sort data by date, workout type, etc. 2) Maybe print out data with a different UI.

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

#Tests
# db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('1-1-2017', 'swimming', 30, '25 laps')")

# db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('1-2-2017', 'running', 30, 'knee injury')")

# db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES ('1-3-2017', 'biking', 40, 'no notes')")

#Get user input
puts "***Welcome to Workout Log App!***
Use this log to track your daily workout."
puts "Start entering your workout data here:"
puts "Enter the date of the workout."
date_complete = gets.chomp
puts "Enter the type of workout."
type = gets.chomp
puts "Enter the duration of the workout (in minutes)."
duration = gets.chomp
puts "Enter any notes."
notes = gets.chomp

#Add entry to database based on user input.
def add_entry(db, date_complete, type, duration, notes)
  db.execute("INSERT INTO workouts (date_complete, type, duration, notes) VALUES (?, ?, ?, ?)", [date_complete, type, duration, notes])
end
add_entry(db, date_complete, type, duration, notes)

#Print all data.
puts
puts "***All Workouts***"
puts
workouts = db.execute("SELECT * FROM workouts")
workouts.each do |workout|
  puts "Date: #{workout['date_complete']}, Workout type: #{workout['type']}, Duration: #{workout['duration']} minutes, Notes: #{workout['notes']}"
  puts
end




