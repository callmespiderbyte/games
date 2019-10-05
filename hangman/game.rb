
require 'rainbow'
require 'yaml'

def gimmespacedammit(text)
  puts
  puts text
  puts
end

wordbank = YAML.load_file('wordbank.yml')

# require 'pry'
# binding.pry

word = wordbank['words']
selected_word = word.sample
guessed_word = "_" * selected_word.length
hint = wordbank['hints'][selected_word]['hint']

lives = 10

array = []

gimmespacedammit Rainbow("⚖️  HANGPERSON ⏳‍").green.bold
puts Rainbow("How to play").green.italic
puts "1) The aim of the game is simply to guess the word before the person meets their fate at the gallows - and yes, it's 'person'."
puts "Execution became pretty progressive, and we don't wanna assume anyone's gender identity!"
puts "2) If you get stuck, type in '?' for a hint. You only get one per word!"
puts "3) Be wary of how many letters you get wrong - 10 incorrect guesses, and the stool gets kicked out from under their feet!"
puts
puts Rainbow("You win when you get all the letters right!").green.bold
puts Rainbow("Ready? GOOD LUCK! :D").green.bold
gimmespacedammit Rainbow("Here's your word:").green.bold

while lives > 0 && guessed_word.include?("_")

  gimmespacedammit guessed_word

  input = $stdin.gets[0]

    while input == "?"
      gimmespacedammit Rainbow(hint).blue.bold
      input = $stdin.gets[0]
    end

    while array.include?(input)
        gimmespacedammit Rainbow("Ru oh, you've already guessed that! Try again :)").orange.bold
        input = $stdin.gets[0]
    end

  array.push input

  selected_word.split("").each.with_index do |character, index|
      guessed_word[index] = character if character == input
    end


  if selected_word.include?(input)
      gimmespacedammit Rainbow("Correct!").green.bold

  else
    lives = lives-1
    life_word = lives == 1 ? "life" : "lives"
    gimmespacedammit Rainbow("Ru oh... you've got #{lives} #{life_word} left!").red.bold
  end

end

  if !guessed_word.include?("_")
    puts
    puts Rainbow("★______________★").green
    puts Rainbow("....YOU WIN!....").green.bold
    print "-> "
    puts Rainbow(guessed_word).orange
    puts Rainbow("★______________★").green


  else
    puts
    puts Rainbow("☠︎_______________☠︎").red
    puts Rainbow("....GAME OVER....").red.bold
    print "The word was "
    puts Rainbow(selected_word).blue
    puts Rainbow("☠︎_______________☠︎").red
  end
puts

# puts 'Type in as many words as you\'d like. When you\'re finished, press enter on an empty line'
# array = []
# input = ' '
# while input != ''
#   input = gets.chomp
#   array.push input
# end
#
# puts
# puts array.sort
