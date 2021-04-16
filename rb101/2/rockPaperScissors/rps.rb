# Rock Paper Scissors game written in ruby

#--------
# MY GAME
#--------

require 'pry'
require 'yaml'

MESSAGES = YAML.load_file('messages.yml')

def messages(messages, lang='en')
  MESSAGES[lang][messages]
end

def prompt(message)
  puts "=> #{message}"
end

def input_to_choice(input)
  choice =
    case input
    when 1 then 'Rock'
    when 2 then 'Paper'
    when 3 then 'Scissors'
    when 4 then 'Quit'
    end

  choice
end

def who_won?(first_player, second_player)
  if (first_player == 'Paper' && second_player == 'Rock') ||
     (first_player == 'Scissors' && second_player == 'Paper') ||
     (first_player == 'Rock' && second_player == 'Scissors')
  end
end

def shoot(usr, pc, lang)
  print "=> Your Choice: #{usr} | My Choice: #{pc}\n"

  sleep 2

  if who_won?(usr, pc)
    prompt(messages('win', lang))
  elsif who_won?(pc, usr)
    prompt(messages('lose', lang))
  else
    prompt(messages('tie', lang))
  end

  sleep 2
end

loop do
  lang = 'en'

  prompt(messages('welcome', lang))
  prompt(messages('choices', lang))

  user_input = gets.chomp

  user_input.strip!

  break if user_input.to_i == 4

  if user_input.nil? || user_input == ""
    puts "You didn't choose! :("
    sleep 2
    next
  end

  if user_input.to_i <= 0 || user_input.to_i > 4
    prompt(messages('illegal', lang))
    sleep 2
    next
  end

  user_choice = input_to_choice(user_input.to_i)

  sleep 1

  prompt(messages('interlude', lang))

  sleep 2

  computer_input = rand(1..3)

  computer_choice = input_to_choice(computer_input)

  print '=> Rock...'
  sleep 0.5
  print 'Paper...'
  sleep 0.5
  print 'Scissors...'
  sleep 0.5
  puts 'SHOOT!!!'

  shoot(user_choice, computer_choice, lang)

  puts "=> Let's play again!"

  sleep 2
end

puts "Ending My Program...Starting Sample Game!"

#------------------------
# SAMPLE GAME FROM COURSE REFACTORED
#------------------------

VALID_CHOICES = %w(rock paper scissors)

def win?(first, second)
  if  (first == 'rock' && second == 'scissors') ||
      (first == 'paper' && second == 'rock') ||
      (first == 'scissors' && second == 'paper')
  end
end

def display_results(player, computer)
  if win?(player, computer)
    prompt('You won!')
  elsif win?(computer, player)
    prompt('Computer won!')
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")

    choice = gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thanks for playing. Goodbye!')
