require 'pry'

template = File.read("story1.txt")
tokens = template.scan(/<(.*)>/).map do |token|
  token.first
end


tokens.each do |token|
  puts token
  value = $stdin.gets.chomp
  template.sub!("<#{token}>",value)
end

puts template

