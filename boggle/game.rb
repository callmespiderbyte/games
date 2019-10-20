# [done] pick a random letter from each of the 16 dice
# put each letter in a random place in a 4x4 grid
# show me that grid
# start a 60 second timer
# when the timer runs out, tell me to stop writing
# show me all the possible word combinations (anagrams):
      # > look in the dictionary
      # > if any word's letters are all present in the random 16 letters, display it

require 'yaml'
require 'rainbow'

def linebreak(text)
  puts
  puts text
  puts
end


alldicefile = YAML.load_file('alldice.yml')
dice = alldicefile['alldice'].keys

selection = []

minutes = 1
seconds = minutes * 60
end_time = Time.now + seconds

dice.each do |sides|
  letter = alldicefile['alldice'][sides].sample
  selection.push letter
end

# shuffle the order of the letters
selection.shuffle!

puts

# take the selection of letters, and display them in four rows, each with four letters
row1 = selection[0..3]
row2 = selection[4..7]
row3 = selection[8..11]
row4 = selection[12..15]

grid = [
  row1,
  row2,
  row3,
  row4,
]

grid.each do |row|
  puts row.join(" ")
end

while Time.now < end_time
end
linebreak Rainbow("Time's up!").green.bold

# (--> trying this one first)
#
# OR
#
# take the selection of letters, and replace each spot in the grid with one letter
