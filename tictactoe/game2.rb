# let me input an X into the grid
# let me input an O into the grid
# repeat last two actions

# when there's a row of 3 of either, tell me i win
# if all 9 spaces are filled, with no rows, tell me i lose

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

puts "LET THE GAMES BEGIN!"
puts

while turn > 0
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

    puts "__________"
    puts "Game over!"
    puts "__________"
    grid_rows.each do |row|
      puts row
    end



puts
puts
