# Simple Arithmetic!
require "pry"


def prompt(message)
  puts "=> #{message}"
end

def op_assign
  begin
    prompt("Enter an arithmetic operation ('+', '-', '*', '/') or 'q' to quit")
    op = gets.chomp
    raise
  rescue
    retry if op != '+' && op != '-' && op != '*' && op != '/' && op != 'q'
  end
  op
end

def num_assign(number)
  begin
    prompt("Enter your #{number} number or 'q' to quit")
    num = gets.chomp
    raise if num.to_f == 0.0
  rescue
    retry if num != 'q' && num != '0'
  end
  num
end

loop do
  binding.pry #execution will stop here if uncommented
  prompt('Simple Arithmetic!')

  first_num = num_assign('first')
  first_num == 'q' ? break : first_num = first_num.to_f

  prompt(first_num.to_s)

  op = op_assign
  break if op == 'q'

  prompt("#{first_num} #{op}")

  second_num = num_assign('second')
  second_num == 'q' ? break : second_num = second_num.to_f

  answer =
    case op
    when '+'
      prompt("#{first_num} plus #{second_num} equals #{first_num + second_num}")
    when '-'
      prompt("#{first_num} minus #{second_num} equals #{first_num - second_num}")
    when '*'
      prompt("#{first_num} times #{second_num} equals #{first_num * second_num}")
    when '/'
      prompt("#{first_num} divided by #{second_num} equals #{first_num / second_num}")
    end

  puts answer
  sleep 1
end

prompt('Ending math program...')
