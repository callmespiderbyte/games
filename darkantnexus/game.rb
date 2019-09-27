require 'rainbow'
require 'tty-prompt'
prompt = TTY::Prompt.new

puts
puts Rainbow("..........DARK ANT NEXUS..........").red.bold
puts
puts Rainbow("One dark ant may be harmless, but").red
puts Rainbow("at the Nexus, where dark ants turn").red
puts Rainbow("into anti-matter, no one stands a").red
puts Rainbow("chance.").red
puts Rainbow("Threatening to take over the world,").red
puts Rainbow("Dark Antimatters need to be stopped.").red
puts Rainbow("But only a hero wielding the TNA formula,").red
puts Rainbow("which turns Dark Antimatters back into").red
puts Rainbow("ordinary ants, that can be squished or").red
puts Rainbow("eaten by Aardvarks, can save the world.").red
puts
puts Rainbow("This is a huge task, but the world is at risk.").red
puts
prompt.ask("What is your name?", help: 'If you forgot, smash forehead onto keyboard.') do |q|
  q.required true
  q.modify   :capitalize
end
puts
prompt.select("Will you claim your destiny?") do |menu|
  puts
  menu.choice 'Yes', -> {puts Rainbow("Cool good luck don't die...!").green}
  menu.choice 'No', -> {puts Rainbow("Yeah, I also have better things to do, I guess... like, pot my orchids, or whatever...").green}
  menu.choice 'What destiny?', -> {puts Rainbow("That dusty knee! Amiright? Ha ha? No? ... Goddamn. Look, the world needs you, kid.").green}

end



puts
# =>
# Choose your destiny? (Use ↑/↓ arrow keys, press Enter to select)
# ‣ Scorpion
#   Kano
#   Jax
