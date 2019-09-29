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

# board = boards.sample

row_number = nil
column_number = nil
win = false

wrong_guesses = 20
# Too may guesses?

hit_outputs = ["Nice! Keep going :D", "Boom! You got one! :D", "BUUUUURN!", "That ship walked the plank! :D", "Kablooey! Another one sent to Davey Jones' locker! ARRRR!"]
hit_output = hit_outputs.sample

miss_outputs = ["Splash! Missed, try again!", "Nope, that's just water! Where are the ships?!", "Oh dear, nothing but H20 here :/", "Ru oh, liquid failure my friend. Try again!", "Nu-uh, only water. Try aim for a ship next time!"]
miss_output = miss_outputs.sample
# How to make these change every time? Currently they're picking one and it's staying the same for the whole game...


array = []
# What I want to do: Prevent me from inputting the same thing twice.
# To think about: Which is better - this, or using the !="_" method from tictactoe?

puts
puts Rainbow("🚢 BATTLESHIPS AND CRUISERS 💣").green.bold
puts
puts Rainbow("How to play").green.italic
puts "1) The aim of the game is to sink all the ships. There are:"
puts "- 2 Battleships (B)"
puts "- 3 Submarines (S)"
puts "- 4 Cruisers (C)"
puts "2) Use columns and grids to aim and fire!"
puts "- So, inputting '23' will hit column 2, and row 3."
puts "3) You only get 20 misses, so make sure to avoid the open water as best as you can!"
puts
puts Rainbow("You win once you sink all the ships!").green.bold
puts Rainbow("Ready? GOOD LUCK! :D").green.bold

 while wrong_guesses > 0 || !win

   puts
   blank_board.each do |row|
       puts row
   end

  puts
  input = $stdin.gets

  while array.include?(input)
    puts
    puts Rainbow("Ru oh, you've already guessed that spot! Try again :)").orange.bold
    puts
    input = $stdin.gets[1]
  end

  array.push input

  column = input[0].to_i
  row = input[1].to_i

# IDEA 4 (thanks dan! 😘)
  guess = boards[column][row]
  puts blank_board[column][row] = guess

  if guess == "~"
      puts
      puts Rainbow(miss_output).blue.bold
      wrong_guesses = wrong_guesses-1
      puts
    else
      puts
      puts Rainbow(hit_output).green.bold
      puts
  end

# IDEA 1
# guess = ["B", "S", "C"]
#   boards[column][row] == guess.any? do |hit|
#     puts blank_board[column][row] == hit
#       end

# IDEA 2
  # if boards[column][row] == "B"
  #   puts blank_board[column][row] = "B"
  # else puts "Try again!"
  # end

  # if boards[column][row] == "C"
  #   puts blank_board[column][row] = "C"
  # else puts "Try again!"
  # end

  # if boards[column][row] == "S"
  #   puts blank_board[column][row] = "S"
  # else puts "Try again!"
  # end

# IDEA 3
    # sunk = boards[column][row] == ["B", "S", "C"].any? do |hit|
    #   if sunk
    #   puts blank_board[column][row] == hit
    #     else puts "Try again!"
    #   end
    # end

count = boards.each do |row|
          battleships = row.split("").count "B"
          submarines = row.split("").count "S"
          cruisers = row.split("").count "C"
          # HOW TO SUM THESE?
        end

  if count == 25
    win = true
  else win = false
  end

end


if win

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
