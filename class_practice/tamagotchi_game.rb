require 'rainbow'
require './tamagotchi'

class TamagotchiGame

  def initialize
    @tamagotchi = Tamagotchi.new(name: "Yaruko")
  end

  def color_text(color, text)
    puts Rainbow(text).send(color).bold
  end

  def print_age
    age_in_days = @tamagotchi.age == 1 ? "day" : "days"
    puts
    puts "It's #{@tamagotchi.age.round(2)} days old, and its stats currently are:"
    puts
  end

  def print_stats
    color_text :green, "Satiety:     #{@tamagotchi.satiety}/10" if @tamagotchi.active_stat?("satiety")
    color_text :green, "Energy:      #{@tamagotchi.energy}/10" if @tamagotchi.active_stat?("energy")
    color_text :green, "Affection:   #{@tamagotchi.affection}/10" if @tamagotchi.active_stat?("affection")
    color_text :green, "Happiness:   #{@tamagotchi.happiness}/10" if @tamagotchi.active_stat?("happiness")
    color_text :green, "Communism:   #{@tamagotchi.communism}/10" if @tamagotchi.active_stat?("communism")
    color_text :green, "The feels:   #{@tamagotchi.feels}/10" if @tamagotchi.active_stat?("feels")
  end

  def print_actions
    puts
    color_text :yellow, "What would you like to do?"

    puts "1 = Feed #{@tamagotchi.name}" if @tamagotchi.active_stat?("satiety")
    puts "2 = Put #{@tamagotchi.name} to sleep" if @tamagotchi.active_stat?("energy")
    puts "3 = Give #{@tamagotchi.name} love" if @tamagotchi.active_stat?("affection")
    puts "4 = Play with #{@tamagotchi.name}" if @tamagotchi.active_stat?("happiness")
    puts "5 = Give #{@tamagotchi.name} a lesson on Soviet Russia" if @tamagotchi.active_stat?("communism")
    puts "6 = Talk about #{@tamagotchi.name}'s feelings!" if @tamagotchi.active_stat?("feels")
    puts
  end

  def do_action
    input = $stdin.gets[0].to_i
    puts

    case input
      when 1
        response = @tamagotchi.do("feed")
        puts response
      when 2
        response = @tamagotchi.do("sleep")
        puts response
      when 3
        response = @tamagotchi.do("love")
        puts response
      when 4
        response = @tamagotchi.do("play")
        puts response
      when 5 
        response = @tamagotchi.do("russian_class")
        puts response
      when 6
        response = @tamagotchi.do("dmc")
        puts response
      else
        color_text :red, "Roops! #{@tamagotchi.name} doesn't know what that is yet..."
        color_text :red, "Please stick to commands it knows!"
    end
  end

  def run
    puts
    color_text :orange, "Meet your new pet-friend, #{@tamagotchi.name}!"
    puts

    while @tamagotchi.age < 2
      print_age
      print_stats
      print_actions
      do_action
    end

    puts
    color_text :orange, "WOAH, #{@tamagotchi.name} grew up! It's a toddler! :D"
    color_text :orange, "It wants to learn about the Soviet Union!"
    puts

    while @tamagotchi.age < 3
      print_age
      print_stats
      print_actions
      do_action
    end

    puts
    color_text :orange, "WOAH, #{@tamagotchi.name} grew up! It's a teenager! :D"
    color_text :orange, "It wants to start talking about its feelings!"
    puts

    while @tamagotchi.age < 4
      print_age
      print_stats
      print_actions
      do_action
    end

  end
end
