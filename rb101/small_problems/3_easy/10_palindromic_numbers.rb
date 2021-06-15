# frozen_string_literal: false

# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.

system('clear')

# --- MY SOLUTION ---

def palindromic_number?(num)
  if num.chars.first == '0'
    num.reverse == num
  else
    num.reverse.to_i == num
end

puts "Enter a number"

usr_num = gets.chomp
puts palindromic_number?(usr_num)
