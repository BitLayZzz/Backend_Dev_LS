# Rock Paper Scissors game written in ruby

# My game

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

def shoot(usr, pc, lang)
  print "=> Your Choice: #{usr} | My Choice: #{pc}\n"

  sleep 2

  case 
  when usr == 'Rock' && pc == 'Rock'
    prompt(messages('tie', lang))
  when usr == 'Scissors' && pc == 'Rock'
    prompt(messages('lose', lang))
  when usr == 'Paper' && pc == 'Rock'
    prompt(messages('win', lang))
  when usr == 'Paper' && pc == 'Paper'
    prompt(messages('tie', lang))
  when usr == 'Rock' && pc == 'Paper'
    prompt(messages('lose', lang))
  when usr == 'Scissors' && pc == 'Paper'
    prompt(messages('win', lang))
  when usr == 'Scissors' && pc == 'Scissors'
    prompt(messages('tie', lang))
  when usr == 'Paper' && pc == 'Scissors'
    prompt(messages('lose', lang))
  when usr == 'Rock' && pc == 'Scissors'
    prompt(messages('win', lang))
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

puts "Ending Program...goodbye for now!"

# Sample game from course
