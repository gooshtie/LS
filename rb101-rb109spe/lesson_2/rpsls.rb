VALID_CHOICES = {'r' => 'rock', 'p' => 'paper', 's' => 'scissors', 'sp' => 'spock', 'l' => 'lizard'}

player_score = 0
computer_score = 0
choice = ''
comp_options = VALID_CHOICES.values

def prompt(message)
  puts "=> #{message}"
end

def win?(first, second)
  (first == 'rock' && (second == 'scissors' || second == 'lizard')) ||
  (first == 'paper' && (second == 'rock' || second = 'spock')) ||
  (first == 'scissors' && (second == 'paper' || second == 'lizard')) ||
  (first == 'spock' && (second == 'rock' || second == 'scissors')) ||
  (first == 'lizard' && (second == 'spock' || second == 'paper'))
end

def display_results(player, computer)
if win?(player, computer)
  prompt('You won!')
elsif win?(computer, player)
  prompt('Computer Won!')
  else
    prompt("It's a tie!")
  end
end

def options_list
  options = VALID_CHOICES.each {|key, value| puts "=> #{key}: #{value}"}
end


loop do

loop do
  prompt("Choose one:")
  options_list
  choice = gets.chomp
  
  if VALID_CHOICES.key?(choice)
    break
  else
    prompt("That's not a valid choice.")
  end
end

computer_choice = comp_options.sample()

puts("")
puts("You chose: #{VALID_CHOICES.fetch(choice)}; Computer chose: #{computer_choice}")

puts(" ")
 
display_results(VALID_CHOICES.fetch(choice), computer_choice)

if win?(VALID_CHOICES.fetch(choice), computer_choice)
  print player_score += 1
elsif win?(computer_choice, VALID_CHOICES.fetch(choice))
  print computer_score += 1
  else
    prompt('No change in score')
  end

prompt("Player: #{player_score}")
prompt("Computer: #{computer_score}")

puts(" ")

if player_score == 3 || computer_score == 3
  player_score = 0
  computer_score = 0
  prompt('Do you want to play again? (y/n)')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end
end
prompt('Thank you for playing. Good bye!')