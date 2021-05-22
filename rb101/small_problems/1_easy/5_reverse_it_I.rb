# frozen_string_literal: false

# Write a method that takes one argument, a string, and returns a new
# string with the words in reverse order.

# --- MY SOLUTION ---
system('clear')

def reverse_sentence(str)
  str.split.reverse.join(' ')
end

puts 'Type in a sentence'

usr_input = gets.chomp

puts ''
puts 'Reversing sentence...'

reverse_usr_input = reverse_sentence(usr_input)

sleep 2

puts ''
puts reverse_usr_input


# --- CLASS SOLUTION ---
# -- same as my solution
#
# def reverse_sentence(string)
#   string.split.reverse.join(' ')
# end
