# [done] pick a random letter from each of the 16 dice
# put each letter in a random place in a 4x4 grid
# show me that grid
# start a 60 second timer
# when the timer runs out, tell me to stop writing
# show me all the possible word combinations (anagrams):
      # > look in the dictionary
      # > if any word's letters are all present in the random 16 letters, display it

require 'yaml'

alldicefile = YAML.load_file('alldice.yml')
dice = alldicefile['alldice'].keys

selection = []

dice.each do |sides|
  letter = alldicefile['alldice'][sides].sample
  selection.push letter
end

# take the selection of letters, and display them in four rows, each with four letters
# (--> trying this one first)
#
# OR
#
# take the selection of letters, and replace each spot in the grid with one letter

selection.each do |x|
 puts x.join(" ")
end
# ^ this returns: undefined method `join' for "T":String (NoMethodError)
# also: 'code smell' > don't think i need "selection"... i can just include this in the other method, and use "letter" inside there?
