# # let me input an X into the grid
# # let me input an O into the grid
# # repeat last two actions
#
# # when there's a row of 3 of either, tell me i win
# # if all 9 spaces are filled, with no rows, tell me i lose
#
# require 'rainbow'
#
# row1 = ("123")
# row2 = ("456")
# row3 = ("789")
#
# grid_row1 = "_" * row1.length
# grid_row2 = "_" * row2.length
# grid_row3 = "_" * row3.length
#
# turn = 9
#
# tictac =  "x"
# toe= "o"
#
# puts "LET THE GAMES BEGIN!"
# puts
#
# while turn > 0
#   puts
#   puts grid_row1
#   puts grid_row2
#   puts grid_row3
#   puts
#
#   input = $stdin.gets[0]
#   turn = turn-1
#
#
#     row1.split("").each.with_index do |character, index|
#       if character == input
#         grid_row1[index] = turn.odd? ? toe : tictac
#       end
#     end
#     row2.split("").each.with_index do |character, index|
#       if character == input
#         grid_row2[index] = turn.odd? ? toe : tictac
#       end
#       end
#     row3.split("").each.with_index do |character, index|
#       if character == input
#         grid_row3[index] = turn.odd? ? toe : tictac
#       end
#       end
#
# end
#
#     puts Rainbow("__________").red
#     puts Rainbow("GAME OVER!").red
#     puts Rainbow("__________").red
#     puts grid_row1
#     puts grid_row2
#     puts grid_row3
#
#
#
# puts
# puts

require 'rainbow'

rows = [
  "123",
  "456",
  "789"
]

# the board is always 3x3, so we can just hard-code it (rather than calculating it from rows)
grid_rows = [
  "___",
  "___",
  "___"
]

turn = 9

tictac =  "x"
toe= "o"

puts
puts Rainbow("LET THE GAMES BEGIN!").green.bold

while turn > 0  # || grid_row.each.include?("_") (NEED TO ADD CONDITION OF THERE BEING A COMPLETE LINE!)

  puts
  grid_rows.each do |row|
    puts row
  end

  puts

  input = $stdin.gets[0].to_i

  # now that we have input from 1..9,
  # calculate which row and column
  row_number = (input-1) / 3
  column_number = (input-1) % 3

  player = turn.even? ? tictac : toe

  grid_rows[row_number][column_number] = player

  turn = turn-1
end

  # if any row is all x, say x wins
  # if any row is all o, say o wins
  # if any column is all x, say x wins
  # if any column is all o, say o wins
  # if x appears in r1c1 and r2c2 and r3c3, say x wins
  # if o appears in r1c1 and r2c2 and r3c3, say o wins
  # if x appears in r1c3 and r2c2 and r3c1, say x wins
  # if o appears in r1c3 and r2c2 and r3c1, say o wins



  puts Rainbow("☠︎_______________☠︎").red
  puts Rainbow("....GAME OVER....").red.bold
  puts Rainbow("☠︎_______________☠︎").red

  grid_rows.each do |row|
      puts row
    end





puts
puts
