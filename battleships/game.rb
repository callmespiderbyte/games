# have 5 different board configurations
# [DONE] layout should be a 9x9 grid with 2 battleships, 3 submarines, 4 cruisers, and the rest is open water
# [DONE] battleships should be "BBBB", submarines "SSS", cruisers "CC" and open water "~"
# pick a random board layout from the 5
# [DONE] display that layout as a row and column of labels, with the rest of the board as blanks "-"

# let me guess a spot on the board
# if i hit a ship, turn the blank into the letter of the ship
# if i hit open water (ie miss), turn the blank into open water
# [DONE] don't let me the guess the same spot twice
# when i've hit all the ships, tell me i've won
# once i miss 25 times, tell me i've lost

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
  "---------",
  "---------",
  "---------",
  "---------",
  "---------",
  "---------",
  "---------",
  "---------",
  "---------",
]

board = boards.sample
row_number = nil
column_number = nil
board_full = false

array = []
# What I want to do: Prevent me from inputting the same thing twice.
# To think about: Which is better - this, or using the !="_" method from tictactoe?

 while !board_full

   puts
   blank_board.each do |row|
     puts row
   end

  puts
  input = $stdin.gets[1]

  while array.include?(input)
    puts
    puts Rainbow("Ru oh, you've already guessed that spot! Try again :)").orange.bold
    puts
    input = $stdin.gets[1]
  end

  array.push input

# This needs some more thought...
  input.split("").to_i.each do |row_number, column_number|
    guess = [row_number][column_number]
    blank_board[row_number][column_number] = []
  end



  end
