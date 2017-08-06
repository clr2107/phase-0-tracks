# module Shout
#   def self.yell_angrily(words)
#     words + "!!!" + ":("
#   end

#   def self.yelling_happily(words)
#     words + "I'm so happy!"
#   end
# end
# Shout.yell_angrily("Hello world!")
# Shout.yelling_happily("Hello world!")

module Shout
  def yell_angrily(words)
   puts words + "!!!" + ":("
  end

  def yelling_happily(words)
   puts words + " I'm so happy!"
  end
end

class Eagle
  include Shout
end

class Bear
  include Shout
end

Eagle_one = Eagle.new
Eagle_one.yell_angrily("I'm alive!")
Eagle_one.yelling_happily("Hooray!")
Bear_one = Bear.new
Bear_one.yell_angrily("I'm alive!")
Bear_one.yelling_happily("Hooray!")
