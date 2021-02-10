# Back to coding 01/22/2021
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

MESSAGES = YAML.load_file('messages.yml')

# Created Classes but very little idea how this works
class String
  def number?
    !Float(self).nil?
  rescue ArgumentError
    false
  end
end

def messages(messages, lang='en')
  MESSAGES[lang][messages]
end

def prompt(message)
  puts "=> #{message}"
end

def calculate(p, j, n)
  m = p * (j / (1 - (1 + j)**(-n)))
  m.to_f
end

def duration_check(num)
  if num.to_f < 0 || num.number? == false
    num = -1
  end
  num
end

def interest_check(num, lang)
  return -1 if num.number? == false

  prompt(messages('interest_check', lang))

  puts "=> #{num.to_f * 100}%"

  interest_choice = gets.chomp.downcase

  if interest_choice != 'y'
    num = -1
  end

  if num.to_f < 0 || num.number? == false
    num = -1
  end

  num
end

def principal_check(num)
  if num.to_f < 0 || num.number? == false
    num = -1
  end

  num
end

# ATTEMPTING TO IMPLEMENT BLOCK AND REDO FOR THIS METHOD
def data_check(message, lang='en')
  1.times do
    prompt(messages(message, lang))

    num = gets.chomp.downcase

    return num if num == 'q'

    result =
      case message
      when 'loan_duration' then duration_check(num)
      when 'interest' then interest_check(num, lang)
      when 'principal' then principal_check(num)
      end

    redo unless result.to_i >= 0

    # Decided to go with an explicit return inside the loop
    return result
  end
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

  puts "=> $#{format("%.2f", answer)} give or take"
  puts "\n"
  sleep 3
end

puts "=> Ending Program..."
