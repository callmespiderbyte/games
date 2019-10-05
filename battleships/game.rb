# have 5 different board configurations
# [DONE] layout should be a 9x9 grid with 2 battleships, 3 submarines, 4 cruisers, and the rest is open water
# [DONE] battleships should be "BBBB", submarines "SSS", cruisers "CC" and open water "~"
# pick a random board layout from the 5
# [DONE] display that layout as a row and column of labels, with the rest of the board as blanks "-"

# let me guess a spot on the board
# reveal whatever character is there to me
# [DONE] don't let me the guess the same spot twice
# when i've hit all the ships (letters), tell me i've won
# if i hit open water 25 times, tell me i've lost

require 'rainbow'
require 'yaml'


def gimmespacedammit(text)
  puts
  puts text
  puts
end

boards = [
  "~~BBBB~~C",
  "~~~~~~~BC",
  "SSS~~~~B~",
  "~~CC~~~B~",
  "~~~~~~~B~",
  "~~~~~SSS~",
  "S~~~CC~~~",
  "S~~~~~C~~",
  "S~~~~~C~~",
]

blank_board = [
  "_________",
  "_________",
  "_________",
  "_________",
  "_________",
  "_________",
  "_________",
  "_________",
  "_________",
]

row_number = nil
column_number = nil
win = false

wrong_guesses = 30
# Too many guesses?

messages = YAML.load_file('messages.yml')
hit_outputs = messages['hit_outputs']
miss_outputs = messages['miss_outputs']

array = []

gimmespacedammit Rainbow("🚢 BATTLESHIPS AND CRUISERS 💣").green.bold
puts Rainbow("How to play").green.italic
puts "1) The aim of the game is to sink all the ships. There are:"
puts "- 2 Battleships (B)"
puts "- 3 Submarines (S)"
puts "- 4 Cruisers (C)"
puts "2) Use columns and grids to aim and fire! Numbers go from 0 to 8."
puts "- So, inputting '20' will hit row 2, and column 0."
puts "3) You only get 30 misses, so make sure to avoid the open water as best as you can!"
puts
puts Rainbow("You win once you sink all the ships!").green.bold
puts Rainbow("Ready? GOOD LUCK! :D").green.bold
puts

 while wrong_guesses > 0 && !win

   puts "  012345678  "
   x = 0
   blank_board.each do |row|
     print x.to_s + " "
     print row + " "
     puts x
     x = x + 1
   end
   puts "  012345678  "

  input = $stdin.gets

  while array.include?(input)

    gimmespacedammit Rainbow("Ru oh, you've already guessed that spot! Try again :)").orange.bold

    input = $stdin.gets[1]
  end

  array.push input

  column = input[0].to_i
  row = input[1].to_i

# IDEA 4 (thanks dan! 😘)
  guess = boards[column][row]
  puts blank_board[column][row] = guess

  if guess == "~"
      gimmespacedammit Rainbow(miss_outputs.sample).blue.bold
      wrong_guesses = wrong_guesses-1
    else
      gimmespacedammit Rainbow(hit_outputs.sample).green.bold
  end

  count = 0

  blank_board.each do |row|

    bees = row.split("").count "B"
    sees = row.split("").count "C"
    esses = row.split("").count "S"
    hits = bees + sees + esses

    count += hits

    # 02 03 04 05 08 18 17 27 22 21 20 32 33
    # 37 47 57 56 55 65 64 60 70 76 86 80

  end

  win = (count == 25)

end


if win
  puts Rainbow("★______________★").green
  puts Rainbow("....YOU WIN!....").green.bold
  puts Rainbow("★______________★").green

else
  puts
  puts Rainbow("☠︎_______________☠︎").red
  puts Rainbow("....GAME OVER....").red.bold
  puts "The solution was:"
  boards.each do |row|
    puts Rainbow(row).blue
  end
  puts Rainbow("☠︎_______________☠︎").red
end
