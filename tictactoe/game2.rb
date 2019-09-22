# let me input an X into the grid
# let me input an O into the grid
# repeat last two actions

# when there's a row of 3 of either, tell me i win
# if all 9 spaces are filled, with no rows, tell me i lose

row1 = ("123")
row2 = ("456")
row3 = ("789")

grid = row1 row2 row3

grid_row1 = "_" * row1.length
grid_row2 = "_" * row2.length
grid_row3 = "_" * row3.length

turn = 9

tictac =  "x"
toe= "o"

puts "LET THE GAMES BEGIN!"
puts

while turn > 0
  puts
  puts grid
  puts

  input = $stdin.gets[0]
  turn = turn-1


    row1.split("").each.with_index do |character, index|
      if character == input
        grid_row1[index] = turn.odd? ? toe : tictac
      end

      end
    row2.split("").each.with_index do |character, index|
        grid_row2[index] = tictac if character == input && turn.even?
        grid_row2[index] = toe if character == input && turn.odd?
      end
    row3.split("").each.with_index do |character, index|
        grid_row3[index] = tictac if character == input && turn.even?
        grid_row3[index] = toe if character == input && turn.odd?
      end

end

    puts "__________"
    puts "Game over!"
    puts "__________"
    puts grid_row1
    puts grid_row2
    puts grid_row3



puts
puts
