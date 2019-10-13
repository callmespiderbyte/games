# verb - past tense
# noun - plural
# adjective
# exotic animal - plural
# body part - sing
# repeat body part - sing
# verb - infinitive
# verb - infinitive
# noun - sing
# verb - present continuous (-ing)
# something you keep next to your bed - sing
# something you'd never want to eat - sing
# The last gift you got - sing
# noun - plural
# Willy Wonka's newest creation - plural

# ask for certain words
# insert those words into the story
# when I've reached the end, tell me the story with the words I gave you

require 'rainbow'
require 'yaml'
require 'pry'

def gimmespacedammit(text)
  puts
  puts text
  puts
end

verb1 = []
noun1 = []
adjective = []
noun2 = []
noun3 = []
# repeat body part - sing
verbinf1 = []
verbinf2 = []
noun4 = []
verbing1 = []
noun5 = []
noun6 = []
noun7 = []
noun8 = []
noun9 = []

puts

puts Rainbow("First up: I need a past tense verb...").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  verb1.push input

puts Rainbow("Next, gimme a cool plural noun...").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun1.push input

puts Rainbow("Right on! An adjective?").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  adjective.push input

puts Rainbow("Aaaaaaand an exotic animal, plural! :D").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun2.push input

puts Rainbow("Great, nice one! Now, I need a body part, singular...").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun3.push input

puts Rainbow("And now, gimme a verb in the infinitive, but without the 'to'!").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  verbinf1.push input

puts Rainbow("One more of those, please. :)").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  verbinf2.push input

puts Rainbow("Go wild and throw in aaany singular noun!").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun4.push input

puts Rainbow("I'm looking for another interesting verb, with an '-ing' at the end.").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  verbing1.push input

puts Rainbow("Ooo, and another singular noun - but this time, let's make it something you keep next to your bed! :D").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun5.push input

puts Rainbow("To keep it interesting, gimme another singular noun - the last thing you'd ever eat!").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun6.push input

puts Rainbow("One more singular noun - this time, what's the last gift you got?").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun7.push input

puts Rainbow("I need two plural nouns: First one is your call... have fun with it! :D").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun8.push input

puts Rainbow("For the second plural noun: What's the name of Willy Wonka's newest creation? (Remember, make it plural!)").orange.bold
  gimmespacedammit input = $stdin.gets.to_s.chomp
  noun9.push input

colourverb1 = Rainbow(verb1).green.bold
colournoun1 = Rainbow(noun1).green.bold
colouradjective = Rainbow(adjective).green.bold
colournoun2 = Rainbow(noun2).green.bold
colournoun3 = Rainbow(noun3).green.bold
# repeat body part - sing
colourverbinf1 = Rainbow(verbinf1).green.bold
colourverbinf2 = Rainbow(verbinf2).green.bold
colournoun4 = Rainbow(noun4).green.bold
colourverbing1 = Rainbow(verbing1).green.bold
colournoun5 = Rainbow(noun5).green.bold
colournoun6 = Rainbow(noun6).green.bold
colournoun7 = Rainbow(noun7).green.bold
colournoun8 = Rainbow(noun8).green.bold
colournoun9 = Rainbow(noun9).green.bold

puts Rainbow("... All done! Ready to read what you've written? :D").orange.bold
  print Rainbow("--> yes").green.bold
  print "/"
  print Rainbow("no").red.bold
  print "?"
  puts

input = $stdin.gets.to_s.chomp

  if input == "yes"

    puts Rainbow("________________________________________").blue.bold
    puts Rainbow("Jason Mraz - I'm Yours... but not really").blue.italic.bold
    puts Rainbow("________________________________________").blue.bold
    puts
    puts "Well you've done done me and you bet I felt it"
    puts "I tried to be chill but you're so hot that I #{colourverb1}"
    puts "I fell right through the #{colournoun1}"
    puts "and now I'm trying to get back"
    puts "I'll be giving it my bestest"
    puts "Nothing's going to stop me but #{colouradjective} #{colournoun2}"
    puts "I reckon it's again my turn to win some or learn some"
    puts
    puts "I won't hesitate no more, no more"
    puts "It cannot wait, I'm yours"
    puts
    puts "Well open up your #{colournoun3} and see like me"
    puts "Open up your #{colournoun3} and damn you're free"
    puts "Look into your heart and you'll find love, love, love, love"
    puts
    puts "Listen to the music of the moment, people, #{colourverbinf1} and #{colourverbinf2},"
    puts "We're just one big #{colournoun4}"
    puts "It's our God-forsaken right to be loved, loved, loved, loved, loved"
    puts
    puts "So I won't hesitate no more, no more"
    puts "It cannot wait I'm sure"
    puts
    puts "There's no need to #{colourverbing1}"
    puts "Our time is short"
    puts "This is our fate, I'm yours"
    puts "Do you want to, come on, scootch over closer dear"
    puts "And I will nibble your #{colournoun5}"
    puts
    puts "I've been spending way too long checking my #{colournoun6} in the mirror"
    puts "And bending over backwards just to try to see it clearer"
    puts "But my breath fogged up the glass"
    puts
    puts "And so I drew a new #{colournoun7} and I laughed"
    puts "I guess what I'll be saying is there ain't no better reason"
    puts
    puts "To rid yourself of #{colournoun8}"
    puts "and just go with the #{colournoun9}"
    puts "It's what we aim to do"
    puts "Our name is our virtue...!"
    puts


    else
      puts
      puts Rainbow("Well fuck, OK then... :(").blue.bold
      puts Rainbow("Didn't think you'd actually say 'no.'").blue.bold
      puts Rainbow("What a waste of time, though. Consoles have shit to do, you know!").blue.bold
      puts "💀💀💀💀💀💀💀💀💀💀💀💀💀💀"
      puts
  end
