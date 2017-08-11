class Dancer
  attr_accessor :age, :tutu
  attr_reader :name, :card

  def initialize(name, age)
    @name = name
    @age = age
    @card = []
    @tutu = "pink"
  end

  def pirouette
    "*twirls*"
  end

  def bow
    "*bows*"
  end

  def queue_dance_with(new_person)
    @card.push(new_person)
  end

  def begin_next_dance
  "Now dancing with #{@card.shift}."
  end

  def change_tutu
    "My tutu is purple"
  end
end

#I added a change tutu color feature. I made the attribute readable and writable using attr_accessor and then changed the color from pink to purple.