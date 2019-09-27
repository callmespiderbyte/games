#
# # start with 10 lives
# lives = 10
# words = ["interpolation","causal","ammunition","sanddune","blimp","ramen","wellington","eczema","artery","viable","asterisk"]
# word = words.sample
# guessed_word = "_" * word.length
#
# guessed_input =
# correct_input
#
# require 'rainbow'
#
#   puts
#   puts Rainbow("Welcome to HangMan! What's your name?").yellow
#   puts
#   name = gets.chomp
#   puts
#   puts Rainbow("Hey there, #{name}! :)").yellow
#   puts Rainbow("Ready? Set? Here's your word...!").yellow
#   puts
#
# while lives > 0 && guessed_word.include?("_")
#
#   puts guessed_word
#
#   input = $stdin.gets[0]
#
#   word.split("").each.with_index do |character, index|
#       guessed_word[index] = character if character == input
#     end
#
#
#   if word.include?(input)
#       puts Rainbow("Correct!").green.bold
#
#   else
#     lives = lives-1
#     life_word = lives == 1 ? "life" : "lives"
#     puts Rainbow("Ru oh... you've got #{lives} #{life_word} left!").red.bold
#   end
#
# end
#
#   if !guessed_word.include?("_")
#     puts
#     puts Rainbow("★______________★").green
#     puts Rainbow("....YOU WIN!....").green.bold
#     print "-> "
#     puts Rainbow(guessed_word).orange
#     puts Rainbow("★______________★").green
#
#
#   else
#     puts
#     puts Rainbow("☠︎_______________☠︎").red
#     puts Rainbow("....GAME OVER....").red.bold
#     print "The word was "
#     puts Rainbow(word).blue
#     puts Rainbow("☠︎_______________☠︎").red
#   end
# puts

puts 'Type in as many words as you\'d like. When you\'re finished, press enter on an empty line'
array = []
input = ' '
while input != ''
  input = gets.chomp
  array.push input
end

puts
puts array.sort
