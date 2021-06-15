# frozen_string_literal: false

# Write a method that returns true if the string passed
# as an argument is a palindrome, false otherwise.
# A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

system('clear')

# --- MY SOLUTION ---
def palindrome?(string)
  string.reverse == string
end

puts "Enter a string"

usr_str = gets.chomp

puts palindrome?(usr_str)
