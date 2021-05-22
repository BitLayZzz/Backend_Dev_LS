# frozen_string_literal: false

# Write a method that takes one argument, a positive integer,
# and returns a list of the digits in the number.
#

# -- My Solution --
# Current Solution doesn't for entered characters other than numbers

system('clear')

def digit_list(num)
  num.split('').map(&:to_i)
end

puts '=> Enter a valid integer to split into a list'

user_int = gets.chomp

if user_int.to_f.to_s == user_int
  puts '=> You entered a decimal number. Changing to a whole number...'
  p digit_list(user_int.to_i.to_s)
else
  p digit_list(user_int)
end

# -- Class Solution --

# def digit_list(number)
#   digits = []
#   loop do
#     number, remainder = number.divmod(10)
#     digits.unshift(remainder)
#     break if number == 0
#   end
#   digits
# end
#
# --- OR ----
#
# def digit_list(number)
#   number.to_s.chars.map(&:to_i)
# end
