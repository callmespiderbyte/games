# ask me to select a consonant or a vowel
# based on my answer, pick a random consonant or vowel for me
# tell me what my selection looks like at that point
# repeat this 9 times
# once i've chosen 9 letters, display the 9 letters to me
# start a 60 second timer
# at the end of 60 seconds, end the timer
# --
# give me the longest possible word i could have guessed

require 'yaml'
require 'rainbow'
require 'tty-prompt'
prompt = TTY::Prompt.new

def linebreak(text)
  puts
  puts text
  puts
end

data = YAML.load_file('data.yml')

consonants = data['letters']['consonants']
vowels = data['letters']['vowels']
input_prompt = data['output_messages']['input_prompt']
invalid_input = data['output_messages']['invalid_input']
timer_start = data['output_messages']['timer']['start']
timer_end =  data['output_messages']['timer']['end']

# conundrum = []
conundrum = ["_","_","_","_","_","_","_","_","_"]

tries = 9
magic = (-11)

begin

  while tries > 0

    sparkles = tries + (magic + 2)

    countdown = nil
    linebreak Rainbow(input_prompt).green.bold
    input = $stdin.gets[0]

    valid_consonant = ["C", "c"]
    valid_vowel = ["V", "v"]
    valid_responses = ["C", "c", "V", "v"]

    while !valid_responses.include?(input)
        linebreak Rainbow(invalid_input).red.bold
        input = $stdin.gets[0]
    end

    if valid_consonant.include?(input)
      countdown = consonants.sample
      conundrum[sparkles] = countdown
    end
    if valid_vowel.include?(input)
      countdown = vowels.sample
      conundrum[sparkles] = countdown
    end

    # NOTE: Can't get this to work...
      # prompt.select("Would you like a consonant, or a vowel?") do |menu|
      #   puts
      #   menu.choice 'Consonant', -> {selection = consonants.sample.to_s}
      #   menu.choice 'Vowel', -> {selection = vowels.sample.to_s}
      #
      #   conundrum.push selection

    # input = boards[column][row]
    # puts blank_board[column][row] = guess



    linebreak Rainbow("#{conundrum.join(" ")}").yellow.bold

    tries = tries - 1
    magic = magic + 2

  end
end

minutes = 1
seconds = minutes * 60
end_time = Time.now + seconds

linebreak "------------------------"
puts Rainbow("Great! Your letters are:").orange.bold
linebreak Rainbow("-> #{conundrum.join(" ")}").beige.bold
puts Rainbow(timer_start).orange.bold


begin
  while Time.now < end_time
  sleep 1
  seconds_left = end_time.to_i - Time.now.to_i
  if seconds_left % 10 == 0 # && seconds_left > 10 (this doesn't trigger the next 'while')
    puts Rainbow("#{seconds_left} seconds left!").red.bold
    end
  end

# NOTE: Trying to add last 10 seconds counter...
# Nothing is happening though, it just stops at 20 seconds,
# and then goes to "Time's up!"
  # while Time.now < end_time
  #   sleep 1
  #   puts seconds_left
  # end
end

linebreak Rainbow(timer_end).green.bold
