#Create class Santa.
class Santa
  attr_reader :ethnicity
  attr_accessor :gender, :age
#Speak method.
  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end
#Eat milk & cookies method.
  def eat_milk_and_cookies(cookie)
    puts "That was a good " + cookie + " cookie!"
  end
# #Initialize method.
  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def celebrate_birthday
    @age+=1
  end

  def get_mad_at(reindeer_name)
    @reindeer_ranking.delete(reindeer_name)
    @reindeer_ranking.push(reindeer_name)
  end

end
#Initialize new instance of Santa class.
# Santa_One = Santa.new("female", "white")
# Santa_One.speak
# Santa_One.eat_milk_and_cookies("chocolate")
# Santa_One.celebrate_birthday
# Santa_One.get_mad_at("Vixen")
# Santa_One.gender=("gender fluid")
# p Santa_One
santas = []
possible_genders = ["agender", "female", "male", "bigender", "gender fluid"]
possible_ethnicities = ["white", "black", "Latino", "Japanese", "unicorn"]
20.times do
  santa = Santa.new(possible_genders[rand(possible_genders.length)], possible_ethnicities[rand(possible_ethnicities.length)])
  santa.age = rand(140)
  santas << santa
  end
p santas


