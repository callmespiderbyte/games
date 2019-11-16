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
  attr_accessor :name, :age, :satiety, :energy, :affection, :happiness, :health, :communism

  def initialize(n, a, s, e, af, h, c)
     @name = n
     @age = a
     @satiety = s #.clamp(0, 10) <-- Not working here, so moved to loop action
     @energy = e #.clamp(0, 10)
     @affection = af #.clamp(0, 10)
     @happiness = h #.clamp(0, 10)
     @communism = c #.clamp(0, 10)
     @health = s + e + af + h
   end

   tamagotchi = Tamagotchi.new("", 0, 0, 0, 0, 0, 0)

    def feed
      @satiety += 2
      @affection -= 1
      @energy -= 1
      @happiness += 1
      @age += 0.2
      @communism -= 1
      puts Rainbow("Yum! That tasted good!").red.bold
    end

    def sleep
      @energy += 2
      @satiety -= 4
      @age += 0.5
      @communism -= 2
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
      @satiety -= 2
      @age += 0.2
      @communism -= 1
      puts Rainbow("This is its favourite game!").red.bold
    end

    def russian_class
      @happiness += 3
      @energy -= -3
      @satiety -= -1
      @age += 0.2
      @communism += 2
      puts Rainbow("So school, much Russia, such Soviet, quite communism...!").red.bold
    end

end

def red_text(text)
  puts Rainbow(text).red.bold
end

def green_text(text)
  puts Rainbow(text).green.bold
end

def yellow_text(text)
  puts Rainbow(text).yellow.bold
end

def orange_text(text)
  puts Rainbow(text).orange.bold
end

tamagotchi = Tamagotchi.new("Yaruko", 0, 7, 8, 10, 9, 10)

puts
orange_text "Meet your new pet-friend, #{tamagotchi.name}!"
puts

while tamagotchi.age < 2

  age_in_days = tamagotchi.age == 1 ? "day" : "days"

  puts
  puts "It's #{tamagotchi.age} #{age_in_days} old, and its stats currently are:"
  puts
  green_text "Satiety:     #{tamagotchi.satiety.clamp(0,10)}/10"
  green_text "Energy:      #{tamagotchi.energy.clamp(0,10)}/10"
  green_text "Affection:   #{tamagotchi.affection.clamp(0,10)}/10"
  green_text "Happiness:   #{tamagotchi.happiness.clamp(0,10)}/10"
  # puts
  # puts Rainbow("Health:      #{tamagotchi.health.clamp(0,40)}/40").green.bold

  puts
  yellow_text "What would you like to do?"
  puts "1 = Feed #{tamagotchi.name}"
  puts "2 = Put #{tamagotchi.name} to sleep"
  puts "3 = Give #{tamagotchi.name} love"
  puts "4 = Play with #{tamagotchi.name}"
  puts
  input = $stdin.gets[0].to_i
  puts

  # while input < 1 || input > 4
  #   rainbow_red "Oh dear... seems like you're trying to make #{tamagotchi.name} do things it doesn't know how to do!"
  #   rainbow_red "Please stick to commands it knows?"
  #   puts
  #   input = $stdin.gets[0].to_i
  # end

  case input
    when 1
      tamagotchi.feed
    when 2
      tamagotchi.sleep
    when 3
      tamagotchi.love
    when 4
      tamagotchi.play
    else
      red_text "Roops! #{tamagotchi.name} doesn't know what that is yet..."
      red_text "Please stick to commands it knows!"
  end

end

puts
orange_text "WOAH, #{tamagotchi.name} grew up! It's a toddler! :D"
orange_text "It wants to learn about the Soviet Union!"
puts

while tamagotchi.age < 3

  puts
  puts "It's #{tamagotchi.age} days old, and its stats currently are:"
  puts
  green_text "Satiety:     #{tamagotchi.satiety.clamp(0,10)}/10"
  green_text "Energy:      #{tamagotchi.energy.clamp(0,10)}/10"
  green_text "Affection:   #{tamagotchi.affection.clamp(0,10)}/10"
  green_text "Happiness:   #{tamagotchi.happiness.clamp(0,10)}/10"
  green_text "Communism:   #{tamagotchi.communism.clamp(0,10)}/10"
  # puts
  # puts Rainbow("Health:      #{tamagotchi.health.clamp(0,40)}/40").green.bold

  puts
  yellow_text "What would you like to do?"
  puts "1 = Feed #{tamagotchi.name}"
  puts "2 = Put #{tamagotchi.name} to sleep"
  puts "3 = Give #{tamagotchi.name} love"
  puts "4 = Play with #{tamagotchi.name}"
  puts "5 = Give #{tamagotchi.name} a lesson on Soviet Russia"
  puts
  input = $stdin.gets[0].to_i
  puts

  # while input < 1 || input > 4
  #   rainbow_red "Oh dear... seems like you're trying to make #{tamagotchi.name} do things it doesn't know how to do!"
  #   rainbow_red "Please stick to commands it knows?"
  #   puts
  #   input = $stdin.gets[0].to_i
  # end

  case input
    when 1
      tamagotchi.feed
    when 2
      tamagotchi.sleep
    when 3
      tamagotchi.love
    when 4
      tamagotchi.play
    when 5
      tamagotchi.russian_class
    else
      red_text "Roops! #{tamagotchi.name} doesn't know what that is yet..."
      red_text "Please stick to commands it knows!"
  end
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
