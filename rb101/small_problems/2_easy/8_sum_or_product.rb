# frozen_string_literal: false

# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of
# all numbers between 1 and the entered integer.

system('clear')

# --- MY SOLUTION ---

def find_nth_triangular_num(int)
  puts "The nth triangular number is the sum of all numbers up to 'n'."

  sleep 2

  if int == 1
    print "The first triangular number is "
  else
    print "The #{int}th triangular number is "
  end

  puts "#{int.downto(1).sum}."
end

def find_factorial(int)
  puts "'n' factorial is the product of all numbers up to 'n'."

  sleep 2

  puts "#{int} factorial (#{int}!) is #{int.downto(1).reduce(:*)}."
end

puts 'Enter a positive integer:'

usr_int = gets.chomp.to_i

if usr_int <= 0
  puts 'Not a positive number'

  usr_choice = 0
else
  puts "Choose what to do next with #{usr_int}: (1 or 2)\n
(1) Find the nth triangular number\n
(2) Find n factorial (n!)"

  usr_choice = gets.chomp.to_i
end


case usr_choice
when 1
  find_nth_triangular_num(usr_int)
when 2
  find_factorial(usr_int)
else
  puts "input error...ending program..."
end


# --- CLASS SOLUTION ---
# def compute_sum(number)
#   total = 0
#   1.upto(number) { |value| total += value }
#   total
# end
#
# def compute_product(number)
#   total = 1
#   1.upto(number) { |value| total *= value }
#   total
# end
#
# puts ">> Please enter an integer greater than 0"
# number = gets.chomp.to_i
#
# puts ">> Enter 's' to compute the sum, 'p' to compute the product."
# operation = gets.chomp
#
# if operation == 's'
#   sum = compute_sum(number)
#   puts "The sum of the integers between 1 and #{number} is #{sum}."
# elsif operation == 'p'
#   product = compute_product(number)
#   puts "The product of the integers between 1 and #{number} is #{product}."
# else
#   puts "Oops. Unknown operation."
# end
