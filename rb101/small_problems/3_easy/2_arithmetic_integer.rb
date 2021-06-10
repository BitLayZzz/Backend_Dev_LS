# frozen_string_literal: false

# Write a program that prompts the user for two positive integers,
# and then prints the results of the following operations on those
# two numbers: addition, subtraction, product, quotient, remainder,
# and power. Do not worry about validating the input.

system('clear')

OPERATORS = ['+', '-', '*', '/', '%', '**']

def arithmetic_solutions(num_1, num_2)
  OPERATORS.map { |op| "==> #{num_1} #{op} #{num_2} = #{num_1.public_send(op, num_2)}" }
end


puts "==> Enter the First Number:"
first_usr_num = gets.chomp.to_i

puts "==> Enter the Second Number:"
second_usr_num = gets.chomp.to_i

puts arithmetic_solutions(first_usr_num, second_usr_num)
