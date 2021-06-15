# frozen_string_literal: false

# Write a program that will ask a user for an input of a word
# or multiple words and give back the number of characters.
# Spaces should not be counted as a character.

system('clear')

# --- MY SOLUTION ---V
def count_characters(string)
  count = 0
  string.each_char { |c| count += 1 if c != " " }
  "There are #{count} characters in #{string}."
end

print "Please write a word or multiple words: "

usr_string = gets.chomp

puts count_characters(usr_string)

# --- CLASS SOLUTION ---
# print 'Please write word or multiple words: '
# input = gets.chomp
# number_of_characters = input.delete(' ').size
# puts "There are #{number_of_characters} characters in \"#{input}\"."
