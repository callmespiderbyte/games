require 'rainbow'
require 'yaml'

advents = YAML.load_file('advents.yml')

def color_puts(color, text)
  puts Rainbow(text).send(color).bold
end

def color_print(color, text)
  print Rainbow(text).send(color).bold
end

days_left = 24

boards = [
  "01 05 23 16 11 02",
  "13 09 07 20 10 12",
  "03 18 24 04 14 06",
  "21 19 08 15 17 22",
]

puts
color_puts :green, "✨ DAN'S ADVENT CALENDAR ✨"
puts
color_puts :orange, "Hey :) I know Christmas isn't big for you,"
color_puts :orange, "but advent calendars are quite German,"
color_puts :orange, "mean a lot to me, and can be fun - and this one's in Ruby!"
puts
color_puts :orange, "I wanted you to have something to look forward to every day,"
color_puts :orange, "but didn't want to get you 24 'novelty' gifts that you'd not use."
color_puts :orange, "So, under each day is a surprise - a quote, a message from me, or"
color_puts :orange, "something you maybe didn't know :)"
puts
color_puts :yellow, "> Find the day (today's date) and pick a ROW first, then a COLUMN,"
color_puts :yellow, "as your input. So row 1, column 1 would be 11."
puts
color_puts :orange, "I hope this is fun! I really enjoyed making it for you ❤"
puts
color_puts :orange, "And, for what it's worth: Merry Christmas. Thanks for letting me"
color_puts :orange, "become a part of your life, and for letting me make you a part of mine."
color_puts :orange, "You make me insanely happy dude. xx"
puts

while days_left > 0

  puts
  color_puts :green, "⭐️ 0  1  2  3  4  5 🎅🏽"
  x = 0

  boards.each do |row|
    puts
    color_print :red, x.to_s + " "
    print row + " "
    color_puts :red, x
    x = x + 1
    puts
  end

  color_puts :green, "🎄 0  1  2  3  4  5 🎁"

  puts

  input = $stdin.gets.to_i

  # row = input[0]
  # column = input[1]

  puts
  color_puts :orange, advents['advents'][input]

  days_left = days_left - 1

end
