# frozen_string_literal: false

# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more chracters
# reversed. Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.
#

system('clear')

# --- MY SOLUTION ---
def reverse_words(sentence)
  str_arr = sentence.split(' ')
  str_arr.each { |str| str.reverse! if str.length >= 5 }
  str_arr.join(' ')
end

puts "Type a sentence to reverse every word \
with 5 or more letters."

usr_input = gets.chomp

if usr_input.split(' ').count > 1
  puts "Reversing sentence..."
elsif usr_input.split(' ').count === 1
  puts "Reversing word..."
else
  puts "No word entered..."
end

sleep 2

result = reverse_words(usr_input)

puts result

# --- CLASS SOLUTION ---
# def reverse_words(string)
#   words = []
#
#   string.split.each do |word|
#     word.reverse! if word.size >= 5
#     words << word
#   end
#
#   words.join(' ')
# end
