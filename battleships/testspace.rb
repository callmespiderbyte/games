require 'pry'

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


# def print_board_with_labels(boards)
#   # ...
#
#   print "X"
#   puts "YYY"
#   puts "ZZZ"
#   print "T"
#   puts "Y"
# end



# print_board_with_labels(boards)


puts "  012345678  "
x = 0
boards.each do |row|
  print x.to_s + " "
  print row + " "
  puts x
  x = x + 1
end
puts "  012345678  "
