class Santa

  def speak
    puts "Ho, ho, ho! Haaaapy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good " + cookie + " cookie!"
  end

  def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

#Attribute-changing methods + setter method
  def celebrate_birthday(age)
    new_age = age + 1
  end

  # def get_mad_at(reindeer_name)
  #   reindeer = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  #   reindeer.push(reindeer_name)
  # end

  def gender=(new_gender)
    @gender = new_gender
  end
end
#Driver code: initialize new instance of Santa class
Christmas = Santa.new
Christmas.speak
Christmas.eat_milk_and_cookies("chocolate")
Christmas.initialize("female", "white")
Christmas.celebrate_birthday(3)
#Getter methods
def age
  @age
end

def ethnicity
  @ethnicity
end

santas = []
possible_genders = ["agender", "female", "male", "bigender", "gender fluid"]
possible_ethnicities = ["white", "black", "Latino", "Japanese", "unicorn"]
possible_genders.length.times do |x|
  santas << Santa.new(possible_genders[x], possible_ethnicities[x])
  end



