require 'rainbow'

class Tamagotchi

  attr_reader :name, :age, :satiety, :energy, :affection, :happiness, :communism, :feels

  def initialize(name:)
    @name = name
    @age = 0
    @satiety = 7
    @energy = 8
    @affection = 10
    @happiness = 9
    @communism = 10
    @feels = 10

    # @health = s + e + af + h
  end

  def do(action)
    response = send(action)
    limit_stats
    response
  end

  def active_stat?(stat)
    case stat
    when "satiety", "energy", "happiness", "affection"
      true
    when "communism"
      @age > 2
    when "feels"
      @age > 3
    else
      false
    end
  end

private

  def limit_stats
    @age = @age.clamp(0,10)
    @satiety = @satiety.clamp(0,10)
    @energy = @energy.clamp(0,10)
    @affection = @affection.clamp(0,10)
    @happiness = @happiness.clamp(0,10)
    @communism = @communism.clamp(0,10)
    @feels = @feels.clamp(0,10)
  end

  def feed
    @satiety += 2
    @affection -= 1
    @energy -= 1
    @happiness += 1
    @age += 0.2
    @communism -= 1
    @feels -= 1
    "Yum! That tasted good!"
  end

  def sleep
    @energy += 2
    @satiety -= 4
    @age += 0.5
    @communism -= 2
    @feels -= 3
    "Zzz... It yawns and feels rested."
  end

  def love
    @affection += 2
    @satiety -= 2
    @energy -= 1
    @age += 0.2
    @feels += 1

    "Mmm, cuddles are nice. Its heart is full of love!"
  end

  def play
    @happiness += 2
    @energy -= 3
    @satiety -= 2
    @age += 0.2
    @communism -= 1
    @feels -= 1
    "This is its favourite game!"
  end

  def russian_class
    @happiness += 3
    @energy -= -3
    @satiety -= -1
    @age += 0.2
    @communism += 2
    @feels -= 1
    "So school, much Russia, such Soviet, quite communism...!"
  end

  def dmc
    @happiness += 2
    @energy -= -1
    @satiety -= -1
    @age += 0.2
    @feels += 2
    "K that's enough thx..."
  end
end
