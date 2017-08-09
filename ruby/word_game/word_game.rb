word = "cat"
user_guess = " " #word.length.times do|x| puts "_" or something
counter = 0
correct_answer = false
word_array = word.split("")
until word == user_guess
  puts "What letter would you like to guess?"
  letter_guess = gets.chomp
  idx = 0
    word_array.each do |letter_word|
        if letter_word == letter_guess
          letter_index = word.index(letter_word)
          user_guess[letter_index] = letter_word
        end
        if letter_word != letter_guess
        puts "Try again!" #if user guesses wrong letter
        end
    idx +=1
    end
    counter +=1
    puts "Your current guess is " + user_guess
    break if
    counter == word.length*2 #user loses if # of guesses == length of word * 2
end
correct_answer = true
      if correct_answer
        puts "You guessed the word! YOU WON!!!"
      end