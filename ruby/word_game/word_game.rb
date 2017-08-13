class WordGame

attr_accessor :user_guess, :all_guesses, :game_over, :counter, :word, :letter_guess

def initialize
  puts "Starting a new game..."
  @game_over = false
  @counter = 0
  @user_guess = []
  @all_guesses = []
end

def create_user_guess(word)
  word.length.times do |x|
    @user_guess << " _ "
end
puts @user_guess.join("")
end

def check_duplicate(letter_guess)
if @all_guesses.include?(letter_guess)
  puts "You already guessed that letter."
  end
end

#Method to get user input (letter), check if letter is correct/incorrect, and print the current word.
def guess(word, letter_guess)
  word_array = word.split("")
  word_array.each_with_index do |letter_word, index|
  if letter_word == letter_guess
    p @all_guesses << letter_guess
    correct_letter = true
    @user_guess[index] = letter_guess
    puts "You guessed a correct letter!"
    puts "Your current guess is " + @user_guess.join("")
    @counter+= 1
  end
  end
  if !word.include?(letter_guess)
    p @all_guesses << letter_guess
    correct_letter = false
    puts "You guessed an incorrect letter! Try again!"
    puts "Your current guess is " + @user_guess.join("")
    @counter +=1
  end
  if word_array == @user_guess
    @game_over = true
    puts "You won in #{@counter} guesses!"
  end
  if @counter > word.length * 2
    @game_over = true
    puts "You are out of guesses! Game over."
  end

end

end

# DRIVER CODE
puts "Welcome to the Word Game!"
game = WordGame.new
puts "User 1: Please enter a secret word."
word = gets.chomp
game.create_user_guess(word)
while !game.game_over
  puts "User 2: Please guess a letter."
  break if @game_over == true
  letter_guess = gets.chomp.to_s
  game.check_duplicate(letter_guess)
  game.guess(word, letter_guess)
end





