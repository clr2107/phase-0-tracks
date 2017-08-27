# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

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

#Contact route
get '/contact' do
 "189 Claremont Avenue, NY NY 10027"
end

#Great job route
#Add ? for query
get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/add' do
  num1 = params[:num1]
  num2 = params[:num2]
  answer = num1.to_i + num2.to_i
  answer.to_s
end


#Is Sinatra the only web app library in Ruby? What are some others?
#Some web application frameworks are Ruby on Rails, Merb, Nitro, and Camping. Sinatra is a microframework. Sinatra is dependent on the Rack web server interface.
#Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
#PostgreSQL (gem install pg) is an object-relational database management system.
#Sequel, pg, postgres, json are other gems for Ruby. JSON (JavaScript Object Notation) is a lightweight data-interchange format that is easy for humans to read and write. (http://ruby-doc.org/stdlib-2.0.0/libdoc/json/rdoc/JSON.html)
#What is meant by the term web stack?
#A web stack is the collection of software required for web development. At a minimum, a web stack contains an operating system (OS), a programming language, a database software and a web server. An example is "LAMP" stack: Linux, Apache, MySQL, PHP.
#Called a stack because the components pile on top of each other:
#Your Application Presentation
 #Your Application Controls
 #Your Application Models
 #HTTP Server (Apache, IIS, etc.)
 #Database
 #Operating System
 #Other examples:
 #MEAN: MongoDB/Express.js, AngularJS, Node.js
 #Ruby Stack: RUby/Ruby on Rails/RVM (Ruby Virtual Machine)/MySQL, Apache, PHP
 #Django Stack: Python/Django/Apache/MySQL
 #Bitnami DevPack: PHP/Django/Ruby on Rails/Java, MySQL, PostgreSQL, Apache Tomcat
#Articles: http://www.codingdojo.com/blog/best-programming-languages-full-stack-web-developer/
#https://medium.com/coderbyte/a-guide-to-becoming-a-full-stack-developer-in-2017-5c3c08a1600c
