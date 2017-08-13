class WordGame

attr_accessor :user_guess, :all_guesses, :game_over, :counter, :word, :letter_guess

def initialize
  puts "Starting a new game..."
  @game_over = false
  @counter = 0
  @user_guess = []
  @all_guesses = []
  @correct_letter = nil
end

def create_user_guess(word)
  word.length.times do |x|
    @user_guess << " _ "
end
puts @user_guess.join("")
end

#Check if letter has already been guessed. Is invoked in guess method.
def check_duplicate(letter_guess)
if @all_guesses.include?(letter_guess)
  puts "You already guessed that letter."
  puts @user_guess.join("")
  @correct_letter = false
  @counter -=1
  return true
end
end

#Check if letter is wrong (i.e. not in word). If so, puts statement. Is invoked in guess method.
def wrong_letter(word, letter_guess)
  if !word.include?(letter_guess) && !@all_guesses.include?(letter_guess)
    @correct_letter = false
    puts "You guessed an incorrect letter! Try again!"
   p @all_guesses << letter_guess
   puts "Your current guess is " + @user_guess.join("")
 end
 end

#Iterate through word, checking letter_guess against each letter. If correct letter, store it in user_guess. If incorrect, run wrong_letter method. When user_guess = word, the user has won. If number of guesses exceeds double the length of the word, the user has lost and the game is over.
def guess(word, letter_guess)
  word_array = word.split("")
  word_array.each_with_index do |letter_word, index|
  if letter_word == letter_guess
    @correct_letter = true
    @user_guess[index] = letter_guess
  end
  end
  check_duplicate(letter_guess)
  wrong_letter(word, letter_guess)
  if @correct_letter == true
    @counter+= 1
    puts "You guessed a correct letter!"
    puts "Your current guess is " + @user_guess.join("")
    p @all_guesses << letter_guess
  end
  if !word.include?(letter_guess)
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
#Initialize new instance of Word Game class. Get user input. Invoke create_user_guess method to create blank user guess array.
puts "Welcome to the Word Game!"
game = WordGame.new
puts "User 1: Please enter a secret word."
word = gets.chomp
game.create_user_guess(word)
while !game.game_over
  puts "User 2: Please guess a letter."
  break if game.game_over == true
  letter_guess = gets.chomp.to_s
  game.guess(word, letter_guess)
end





