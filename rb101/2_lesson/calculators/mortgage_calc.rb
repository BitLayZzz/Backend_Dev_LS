#Back to coding 01/22/2021
#
# This is a basic mortgage calculator written in ruby
# The formula to calculate a mortgage is listed below:
# m = p * (j / (1 - (1 + j)**(-n)))
# Where:
# m = monthly payment
# p = loan amount amount/principal
# j = monthly interest rate
# n = loan duration in months
# ------------------------------------------------------
require 'pry' 
require 'yaml'

MESSAGES = YAML.load_file('mortgage_calc_messages.yml')

def messages(messages, lang='en')
  MESSAGES[lang][messages]
end

def prompt(message)
  puts "=> #{message}"
end

def calculate(p, j, n)
  m = p * (j / (1 - (1 + j)**(-n)))
  return m.to_i
end

def data_check(message, lang='en')
  begin 
    prompt(messages(message, lang))
    num = gets.chomp
    raise if num != 'q'  
  rescue 
    retry if num.to_f < 0 || num != '0' && num.to_f == 0.0  

    if message == 'interest'
      prompt(messages('interest_check', lang))
      puts "=> #{num.to_f * 100}%"
      interest_choice = gets.chomp
      retry if interest_choice != 'y'
    end
    #
    retry if message == 'loan_duration' && num.to_i < 1 
  end

  num
end


loop do
  lang = 'en'

  prompt(messages('welcome', lang))
  puts "\n"
 
  p = data_check('principal', lang)
  break if p == 'q'

  j = data_check('interest', lang) 
  break if j == 'q'

  n = data_check('loan_duration', lang) 
  break if n == 'q'

  sleep 2 

  puts "=> principal = $#{p}"
  puts "=> interest = #{j.to_f * 100}%" 
  puts "=> loan duration = #{n} months\n"

  answer = calculate(p.to_f, j.to_f, n.to_i)

  sleep 1

  prompt(messages('results_prompt', lang))

  sleep 1
  
  puts "=> $#{answer} give or take"
  puts "\n"
  sleep 3
end

puts "=> Ending Program..."
