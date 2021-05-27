# frozen_string_literal: true

# Write a method that takes one argument, a positive integer,
# and returns the sum of its digits. For a challenge, try
# writing this without any basic looping constructs.

system('clear')

# --- MY SOLUTION ---
def sum(num)
  num.to_s.split('').map(&:to_i).sum
end

def challenge_sum(num)
  num.digits.sum
end

num = 123

puts sum(num)
puts challenge_sum(num)

puts sum(123_456_789) == 45

# --- CLASS SOLUTION ---
# def sum(number)
#   sum = 0
#   str_digits = number.to_s.chars
#
#   str_digits.each do |str_digit|
#     sum += str_digit.to_i
#   end
#
#   sum
# end
#
# OR
#
# def sum(number)
#   number.to_s.chars.map(&:to_i).reduce(:+)
# end
