# frozen_string_literal: false

# Description: Write a method that takes two strings as arguments,
# determines the longest of the two strings, and then returns
# the result of concatenating the shorter string, the longer string,
# and the shorter string once again. You may assume that the strings
# are of different lengths.

system('clear')

# --- MY SOLUTION ---
def short_long_short(str_1, str_2)
  if str_1.length > str_2.length
    str_2 + str_1 + str_2
  else
    str_1 + str_2 + str_1
  end
end

puts "SHORT LONG SHORT"

puts "Enter your first string."

string_1 = gets.chomp

puts "Enter your second string."

string_2 = gets.chomp

short_long_short_str = short_long_short(string_1, string_2)

puts short_long_short_str


# --- CLASS SOLUTION ---
# def short_long_short(string1, string2)
#   if string1.length > string2.length
#     string2 + string1 + string2
#   else
#     string1 + string2 + string1
#   end
# end
#
# Less clear answer
# def short_long_short(string1, string2)
#   arr = [string1, string2].sorty_by { |el| el.length }
#   arr.first + arr.last + arr.first
# end
