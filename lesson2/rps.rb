require "pry"

player_score = 0
computer_score = 0

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == 'rock' && second == 'scissors') ||
  (first == 'rock' && second == 'lizard') ||
  (first == 'paper' && second == 'rock') ||
  (first == 'paper' && second == 'spock') ||
  (first == 'scissors' && second == 'paper') ||
  (first == 'scissors' && second == 'lizard') ||
  (first == 'spock' && second == 'rock') ||
  (first == 'spock' && second == 'scissors') ||
  (first == 'lizard' && second == 'spock')||
  (first == 'lizard' && second == 'paper')
end

def game_score(x, y)
  if win?(x,y)
    player_score = player_score + 1
  elsif win?(y, x)
    computer_score = computer_score + 1
  else
  end
end


def display_result(player, computer)
  if win?(player, computer)
    prompt('You won!')
      elsif win?(computer, player)
    prompt('Computer won!')
      else
    prompt("It's a tie!")
  end
end

VALID_CHOICES = %w(rock paper scissors spock lizard)

# Main program loop
loop do
  player_score = 0
  computer_score = 0
  choice = ' '
  
  # User choice and validation
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice!")
    end
  end

  # Computer choice
  computer_choice = VALID_CHOICES .sample
  prompt("You chose: #{choice}; Computer chose: #{computer_choice}")

  game_score(choice, computer_choice)
  display_result(choice, computer_choice)
  
  binding.pry

  # Play again loop
  prompt("Player: #{player_score}, Computer: #{computer_score}")
  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thanks for playing!')
