# require 'pry'

require 'rainbow'

template = File.read("story1.txt")
tokens = template.scan(/<(.*)>/).map do |token|
  token.first
end

def linebreak(text)
  puts
  puts text
  puts
end

tokens.each do |token|
  linebreak token
  value = $stdin.gets.chomp
  template.sub!("<#{token}>",value)
end

linebreak Rainbow("... All done! Ready to read what you've written? :D").orange.bold
  print Rainbow("--> yes").green.bold
  print "/"
  print Rainbow("no").red.bold
  print "?"

puts

input = $stdin.gets.to_s.chomp

if input == "yes"

  linebreak template

  else
    puts
    puts Rainbow("Well fuck, OK then... :(").blue.bold
    puts Rainbow("Didn't think you'd actually say 'no.'").blue.bold
    puts Rainbow("What a waste of time, though. Consoles have shit to do, you know!").blue.bold
    puts "💀💀💀💀💀💀💀💀💀💀💀💀💀💀"
    puts
end
