#
# class MinecraftProjects
#   attr_accessor :name, :owner, :priority, :completion
#
#   def initialize(n, o, p, c)
#     @name = n
#     @owner = o
#     @priority = p
#     @completion = c
#   end
#
require 'rainbow'

class Tamagotchi
  attr_accessor :name, :age, :satiety, :energy, :affection, :happiness

  def initialize(n, a, s, e, af, h)
     @name = n
     @age = a
     @satiety = s
     @energy = e
     @affection = af
     @happiness = h
     @health = 0 + s + e + af + h
   end

# LIMITING STATS PAST 10?
   # def Stats.AreMaxed(tamagotchi)
   #   return tamagotchi.satiety > MaxSatiety
   #   return tamagotchi.energy > MaxEnergy
   #   return tamagotchi.affection > MaxAffection
   #   return tamagotchi.happiness > MaxHappiness
   # end

   tamagotchi = Tamagotchi.new("", 0, 0, 0, 0, 0)

    def feed
      @satiety += 2
      @affection -= 1
      @age += 0.2
      puts Rainbow("Yum! That tasted good!").red.bold
    end

    def sleep
      @energy += 2
      @satiety -= 4
      @age += 0.5
      puts Rainbow("Zzz... It yawns and feels rested.").red.bold
    end

    def love
      @affection += 2
      @satiety -= 2
      @energy -= 1
      @age += 0.2
      puts Rainbow("Mmm, cuddles are nice. Its heart is full of love!").red.bold
    end

    def play
      @happiness += 2
      @energy -= 3
      @age += 0.2
      puts Rainbow("This is its favourite game!").red.bold
    end

end

tamagotchi = Tamagotchi.new("Yaruko", 0, 7, 8, 10, 9)

puts Rainbow("Meet your new pet-friend, #{tamagotchi.name}!").yellow.bold

while tamagotchi.age < 2

  age_in_days = tamagotchi.age == 1 ? "day" : "days"
  tamagotchi.affection < 10 ? nil : 10

  puts
  puts "It's #{tamagotchi.age} #{age_in_days} old, and its stats currently are:"
  puts
  puts Rainbow("Satiety:     #{tamagotchi.satiety}/10").green.bold
  puts Rainbow("Energy:      #{tamagotchi.energy}/10").green.bold
  puts Rainbow("Affection:   #{tamagotchi.affection}/10").green.bold
  puts Rainbow("Happiness:   #{tamagotchi.happiness}/10").green.bold
  puts
  puts Rainbow("What would you like to do?").yellow.bold
  puts "1 = Feed #{tamagotchi.name}"
  puts "2 = Put #{tamagotchi.name} to sleep"
  puts "3 = Give #{tamagotchi.name} love"
  puts "4 = Play with #{tamagotchi.name}"
  puts
  input = $stdin.gets[0]
  puts

  input = 1 ? tamagotchi.feed : nil

end

puts
puts Rainbow("WOAH, #{tamagotchi.name} grew up! Now it's a todler! :D").orange.bold
puts

while tamagotchi.age < 3

  age_in_days = tamagotchi.age == 1 ? "day" : "days"
  tamagotchi.affection < 10 ? nil : 10

  puts
  puts "It's #{tamagotchi.age} #{age_in_days} old, and its stats currently are:"
  puts
  puts Rainbow("Satiety:     #{tamagotchi.satiety}/10").green.bold
  puts Rainbow("Energy:      #{tamagotchi.energy}/10").green.bold
  puts Rainbow("Affection:   #{tamagotchi.affection}/10").green.bold
  puts Rainbow("Happiness:   #{tamagotchi.happiness}/10").green.bold
  puts
  puts Rainbow("What would you like to do?").yellow.bold
  puts "1 = Feed #{tamagotchi.name}"
  puts "2 = Put #{tamagotchi.name} to sleep"
  puts "3 = Give #{tamagotchi.name} love"
  puts "4 = Play with #{tamagotchi.name}"
  puts
  input = $stdin.gets[0]
  puts

  input = 1 ? tamagotchi.feed : nil

end


# if input = 2
#   tamagotchi.sleep
# end
# if input = 3
#   tamagotchi.love
# end
# if input = 4
#   tamagotchi.play
# end


# puts
# puts Rainbow("Meet your new pet-friend, #{tamagotchi.name}!").yellow.bold
# puts "It's #{tamagotchi.age} day old, and its stats currently are:"
# puts
# puts Rainbow("Satiety: #{tamagotchi.satiety}/10").green.bold
# puts Rainbow("Energy: #{tamagotchi.energy}/10").green.bold
# puts Rainbow("Affection: #{tamagotchi.affection}/10").green.bold
# puts Rainbow("Happiness: #{tamagotchi.happiness}/10").green.bold
# # puts "Overall health: #{tamagotchi.health}/40"
# puts
# puts Rainbow("What would you like to do?").yellow.bold
# puts "1 = Feed #{tamagotchi.name}"
# puts "2 = Put #{tamagotchi.name} to sleep"
# puts "3 = Give #{tamagotchi.name} love"
# puts "4 = Play with #{tamagotchi.name}"
# puts
# input = $stdin.gets[0]
#
# if input == "1"
#   tamagotchi.change_info(n, a, (s+2), e, af)
#
#   puts "Its stats currently are:"
#   puts
#   puts Rainbow("Satiety: #{tamagotchi.satiety}/10").green.bold
#   puts Rainbow("Energy: #{tamagotchi.energy}/10").green.bold
#   puts Rainbow("Affection: #{tamagotchi.affection}/10").green.bold
#   puts Rainbow("Happiness: #{tamagotchi.happiness}/10").green.bold
