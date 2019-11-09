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
      puts Rainbow("Yum! That tasted good! #{tamagotchi.name} enjoyed that.").red.bold
    end

    def sleep
      @energy += 2
      @satiety -= 2
      @age += 0.5
      puts Rainbow("Zzz... #{tamagotchi.name} yawns and feels rested.").red.bold
    end

    def love
      @affection += 2
      @satiety -= 2
      @energy -= 1
      puts Rainbow("Mmm, cuddles are nice. #{tamagotchi.name}'s heart is full of love!").red.bold
    end

    def play
      @happiness += 2
      @energy -= 1
      puts Rainbow("This is #{tamagotchi.name}'s favourite game!").red.bold
    end

end

tamagotchi = Tamagotchi.new("Yaruko", 1, 8, 10, 10, 9)

puts Rainbow("Meet your new pet-friend, #{tamagotchi.name}!").yellow.bold
puts "It's #{tamagotchi.age} day old, and its stats currently are:"
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

input = 3 ? tamagotchi.love : nil


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
