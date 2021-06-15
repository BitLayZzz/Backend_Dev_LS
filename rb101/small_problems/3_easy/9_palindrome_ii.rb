# frozen_string_literal: false

# Write another method that returns true if the string passed
# as an argument is a palindrome, false otherwise.
# This time, however, your method should be case-insensitive,
# and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome?
# method you wrote in the previous exercise.

system('clear')

# --- MY SOLUTION ---

def clean(dirty_string)
  dirty_string = dirty_string.downcase.split('')
  clean_string = dirty_string.filter { |c| c.match(/[^\W]/) }.join
end

def palindrome?(string)
  string = clean(string)
  string == string.reverse
end

puts "Enter a string"

usr_str = gets.chomp

puts palindrome?(usr_str)

# --- CLASS SOLUTION ---
# def real_palindrome?(string)
#   string = string.downcase.delete('^a-z0-9')
#   palindrome?(string)
# end
