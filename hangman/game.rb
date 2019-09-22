
# start with 10 lives
lives = 10
words = ["interpolation","causal","ammunition","sanddune","blimp","ramen","wellington","eczema","artery","viable","asterisk"]
word = words.sample
guessed_word = "_" * word.length

while lives > 0 && guessed_word.include?("_")

  puts guessed_word

  input = $stdin.gets[0]

  word.split("").each.with_index do |character, index|
      guessed_word[index] = character if character == input
    end

  if word.include?(input)
      puts "yes"

  else
    lives = lives-1
    life_word = lives == 1 ? "life" : "lives"
    puts "weh - you've got #{lives} #{life_word} left!"
  end

end

  if !guessed_word.include?("_")
    puts "hazaar!"
    puts guessed_word

  else
    puts "womp womp womp...☠︎"
  end


puts
puts
