require 'rainbow'

rows = [
  "123",
  "456",
  "789"
]

grid_rows = [
  "___",
  "___",
  "___"
]

board_full = false
win = false
row_number = nil
column_number = nil

tictac = "x"
toe= "o"
current_player = tictac

puts
puts Rainbow("LET THE GAMES BEGIN!").green.bold

while !board_full && !win

  puts
  grid_rows.each do |row|
    puts row
  end

  puts

  begin

    input = $stdin.gets[0].to_i

    while input == 0
      puts
      puts Rainbow("Ru oh... Try a number between 1 and 9!").orange.bold
      puts
      input = $stdin.gets[0].to_i
      puts
    end

    row_number = (input-1) / 3
    column_number = (input-1) % 3

  end while grid_rows[row_number][column_number] != "_"

  grid_rows[row_number][column_number] = current_player

  board_full = grid_rows.all? do |row|
    row.split('').all? do |item|
      item != "_"
    end
  end

  win_row = grid_rows.any? do |item|
    item == "xxx" || item == "ooo"
  end

  win_column = ["o","x"].any? do |player|
    [0,1,2].any? do |column|
      grid_rows.all? do |row|
        row[column] == player
      end
    end
  end

  win_diagonal = ["o","x"].any? do |player|
    (grid_rows[0][0] == player && grid_rows[1][1] == player && grid_rows[2][2] == player) ||
    (grid_rows[0][2] == player && grid_rows[1][1] == player && grid_rows[2][0] == player)
  end

  win = win_row || win_column || win_diagonal

  if current_player == tictac
    current_player = toe
  else
    current_player = tictac
  end

end

  if win
    puts
    puts Rainbow("HOLY SHIT YOU WON").green.bold
    puts
  else

  puts
  puts Rainbow("☠︎_______________☠︎").red
  puts Rainbow("....GAME OVER....").red.bold
  puts Rainbow("☠︎_______________☠︎").red
  puts
end

  grid_rows.each do |row|
      puts row
    end





puts
puts
