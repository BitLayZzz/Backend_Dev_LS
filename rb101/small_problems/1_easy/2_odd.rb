# frozen_string_literal: false

# Instructions:
# Write a  method that takes one integer argument, which may be positive,
# negative, or zero. This method returns true if the number's absolute value is
# odd. You may assume that the argument is a valid integer value.
#

# -- My Solution --

system('clear')

def odd_int?(number)
  !(number.abs % 2).zero?
end

puts '=> Enter a valid integer.'

user_int = gets.chomp.to_i

puts odd_int?(user_int) ? "You're number is odd." : "You're number is even."

# -- Class Solution --

# def is_odd?(number)
#   number % 2 == 1
# end
