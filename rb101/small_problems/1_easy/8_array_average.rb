# frozen_string_literal: true

# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.
# Your result should also be an integer.

system('clear')

# --- MY SOLUTION ---
def average(int_arr)
  avg = 0
  int_arr.collect! { |n| avg += (n.to_f / int_arr.length) }.pop.to_i
end

# --- CLASS SOLUTION ---
# def average(numbers)
#   sum = numbers.reduce { |sum, number| sum + number }
#   sum / numbers.count
# end

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
