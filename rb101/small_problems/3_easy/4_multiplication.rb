# frozen_string_literal: false

# Create a method that takes two arguments, multiplies them together,
# and returns the result.

system('clear')

def multiply(x, y)
  total = 0
  y.to_i.times { total += x }
  total
end

puts "Multiplication!"

puts "Enter your first number."
usr_x = gets.chomp.to_f

puts "Enter your second number."
usr_y = gets.chomp.to_f

puts multiply(usr_x, usr_y)
