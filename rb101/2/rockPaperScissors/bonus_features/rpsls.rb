# Expanision of the original rock paper scissors game
# Rock, Paper, Scissors, Lizard, Spock...
# Began upgrades 04/20/21

#--------
# MY GAME
#--------

require 'pry'
require 'yaml'

MESSAGES = YAML.load_file('messages_rpsls.yml')

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
    when 4 then 'Lizard'
    when 5 then 'Spock'
    end

  choice
end

def won?(player1_choice, player2_choice, winner_table)
  winner_table[player1_choice.downcase.to_sym].include?(player2_choice)
end

def shoot(usr_choice, pc_choice, lang, winner_lookup_table)
  print "=> Your Choice: #{usr_choice} | My Choice: #{pc_choice}\n"

  result = ''

  sleep 2

  if won?(usr_choice, pc_choice, winner_lookup_table)
    prompt(messages('round_won', lang))
    result = 'user'
  elsif won?(pc_choice, usr_choice, winner_lookup_table)
    prompt(messages('round_lost', lang))
    result = 'pc'
  else
    prompt(messages('tie', lang))
  end

  result
end

# Main Loop
loop do
  system('clear')

  lang = 'en'
  user_score = 0
  pc_score = 0
  round = 1

  rpsls_winner_map = {
    rock: ['Lizard', 'Scissors'],
    paper: ['Spock', 'Rock'],
    scissors: ['Lizard', 'Paper'],
    lizard: ['Paper', 'Spock'],
    spock: ['Rock', 'Scissors']
  }

  prompt(messages('welcome'))

  sleep 2
  puts ' '

  until user_score == 5 || pc_score == 5
    prompt("ROUND #{round}. Best to 5!")
    prompt(messages('choices', lang))

    user_input = gets.chomp
    user_input.strip!

    break if user_input.to_i == -1

    if user_input.nil? || user_input == ""
      prompt(messages('no_choice', lang))
      sleep 2
      next
    end

    if (user_input.to_i <= 0 && user_input.to_i != -1) || user_input.to_i > 5
      prompt(messages('bad_choice', lang))
      sleep 2
      next
    end

    user_choice = input_to_choice(user_input.to_i)

    sleep 1

    prompt(messages('interlude', lang))

    sleep 2
    puts ' '

    computer_input = rand(1..5)
    computer_choice = input_to_choice(computer_input)

    puts '=> Ready...'
    sleep 2
    print '=> rock...'
    sleep 0.5
    print 'paper...'
    sleep 0.5
    print 'scissors...'
    sleep 0.5
    print 'lizard...'
    sleep 0.5
    print 'spock...'
    sleep 0.5
    puts 'SHOOT!!!'

    round_winner = shoot(user_choice, computer_choice, lang, rpsls_winner_map)

    puts round_winner
    case round_winner
    when 'user' then user_score += 1
    when 'pc' then pc_score += 1
    end

    sleep 2
    prompt("Score: User: #{user_score} | PC: #{pc_score}")

    round += 1
  end

  if user_score == 5
    prompt(messages('game_won', lang))
    prompt(messages('play_again', lang))
  elsif pc_score == 5
    prompt(messages('game_lost', lang))
    prompt(messages('play_again', lang))
  else
    break
  end

  user_play_again_input = gets.chomp

  break if user_play_again_input.strip != 'y'
end

prompt(messages('goodbye', 'en'))
