# frozen_string_literal: false

# Write a method that searches for all multipels of 3 or 5 that lie between
# 1 and some other number, and then computes the sum of those multiples.
# For instance, if the supplied number is 20, the result should be 98
# (3 + 6 + 9 + 10 + 12 + 15 + 18 + 20)
#
# You may assume that the number passed ini is an integer greater than 1.

system('clear')

# --- MY SOLUTION --
def multisum(num)
  multiples_of_3 = Array.new()
  multiples_of_5 = Array.new()

  (1..num).each { |n| multiples_of_3.push(n) if (n % 3).zero? }
  (1..num).each { |n| multiples_of_5.push(n) if (n % 5).zero? }

  result = multiples_of_3.concat(multiples_of_5).uniq.sum
end

puts "Enter a number"

usr_num = gets.chomp.to_i

puts multisum(usr_num)

# --- CLASS SOLUTION ---
# def multiple?(number, divisor)
#   number % divisor == 0
# end
#
# def multisum(max_value)
#   sum = 0
#   1.upto(max_value) do |number|
#     if multiple?(number, 3) || multiple?(number, 5)
#       sum += number
#     end
#   end
#   sum
# end
