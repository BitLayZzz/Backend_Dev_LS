# Simple Arithmetic!
require "pry"
require 'yaml'

MESSAGES = YAML.load_file('calc_messages.yml')

def messages(messages, lang='en')
  MESSAGES[lang][messages]
end

def prompt(message)
  puts "=> #{message}"
end

def op_assign
  begin
    #prompt("Enter an arithmetic operation ('+', '-', '*', '/') or 'q' to quit")
    prompt(messages('op_title', lang))
    op = gets.chomp
    raise
  rescue
    retry if op != '+' && op != '-' && op != '*' && op != '/' && op != 'q'
  end
  op
end


def num_assign(number, lang)
  begin
    #prompt("Enter your #{number} number or 'q' to quit")
    prompt(messages('num_title', lang))
    num = gets.chomp
    raise if num.to_f == 0.0
  rescue
    retry if num != 'q' && num != '0'
  end
  num
end


loop do
  # binding.pry #execution will stop here if uncommented
  #prompt('Simple Arithmetic!')
  
  puts "...for english press 1, para espanol oprima 2..." 
  lang_choice = gets.chomp.to_i

  next if lang_choice != 1 && lang_choice != 2

  lang_choice == 1 ? lang = 'en' : lang = 'es'

  prompt(messages('welcome', lang))
  first_num = num_assign('first', lang)
  first_num == 'q' ? break : first_num = first_num.to_f

  prompt(first_num.to_s)

  op = op_assign(lang)
  break if op == 'q'

  prompt("#{first_num} #{op}")

  second_num = num_assign('second', lang)
  second_num == 'q' ? break : second_num = second_num.to_f

  answer =
    case op
    when '+'
      prompt("#{first_num} + #{second_num} = #{first_num + second_num}")
    when '-'
      prompt("#{first_num} - #{second_num} = #{first_num - second_num}")
    when '*'
      prompt("#{first_num} * #{second_num} = #{first_num * second_num}")
    when '/'
      prompt("#{first_num} / #{second_num} = #{first_num / second_num}")
    end

  puts answer
  sleep 1
end

prompt('Ending math program...')
