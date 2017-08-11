# Virus Predictor

# I worked on this challenge [by myself, with: Brian Lin, Catherine Rice].
# We spent [2] hours on this challenge.

# EXPLANATION OF require_relative
#Require_relative creates a link between two files.
#Require links by an absolute path between two files while require_relative links two documents in the same directory.
#Require can link to libraries using 'path'.
require_relative 'state_data'

class VirusPredictor
#Creates a new instance of the class VirusPredictor and then takes in as arguments the instance variables/attributes.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
#Calling the predicted_deaths and speed_of_spread methods, which are defined below.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

private

#Calculating the number of deaths by multiplying population by a number, and based on population density. Prints a statement at the end saying how many people will die in each state.
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      r = 0.4
    elsif @population_density >= 150
      r = 0.3
    elsif @population_density >= 100
      r = 0.2
    elsif @population_density >= 50
      r = 0.1
    else
      r = 0.05
    end
    number_of_deaths = (@population * r).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end

#Calculating speed of spread based on population density. Prints a statement at the end saying how fast the virus will spread in a number of months.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

#Create a loop and iterate through state data.
STATE_DATA.each do |state, pop_info|
  test = VirusPredictor.new(state, pop_info[:population_density], pop_info[:population])
  test.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
#What are the differences between the two hash syntaxes shown in the state_data file?
#The two hash syntaxes are: {"key" => "value"} and {key: value}. Because this is a nested hash (or a hash within a hash), the first key that is introduced is the state, i.e. "New York" followed by the => and then the value. Within the value, there is a hash, where the key is assigned using a colon, and a symbol (i.e. population_density:), and then assigned a value of a number. Population: is also a key/value pair as well.
#What does require_relative do? How is it different from require?
#Require_relative links a file to another file, using a keyword which is usually a class name or a name in the file. It is useful when there is a large amount of data that needs to be used in the file. The data which is linked using require_relative is then accessible in another file. Require is similar but is more general, allowing libraries to be linked such as modules. Require_relative also uses the relative path, meaning it links files in the same directory, while require has to be linked via an absolute directory.
#What are some ways to iterate through a hash?
#An easy way to iterate through a hash is .each, which takes key and value as parameters. Other ways are .map or .sort. It is similar to iterating over an array.
#When refactoring virus_effects, what stood out to you about the variables, if anything?
#What concept did you most solidify in this challenge?
#I felt much more confident iterating through a hash and accessing certain variables/data within the hash. It was useful to have an example of the output in the driver code (i.e. the four states which were given) and then being required to come up with a solution for all 50 states. I also feel like the concept of require_relative makes more sense, after having discussed the scope of the STATE_DATA variable and why it is a constant variable, meaning why it changed. It also reinforced the idea that you may want some data to be private and some to be accessible to other parts of the program/other people, or not.
