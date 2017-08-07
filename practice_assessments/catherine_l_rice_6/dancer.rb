class Dancer
  attr_accessor :age, :tutu

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
    @tutu = "pink"
  end

  def tutu
    @tutu
  end

  def name()
    @name
  end

  def pirouette()
    "*twirls*"
  end

  def bow()
    "*bows*"
  end

  def card
    @card
  end

  def queue_dance_with(new_person)
    @card.push(new_person)
  end

  def begin_next_dance()
    next_person = @card.shift
  "Now dancing with #{next_person}."
  end

  def change_tutu
    "purple"
  end
end

#I added a change tutu color feature. I made the attribute readable and writable and then changed the color from pink to purple.