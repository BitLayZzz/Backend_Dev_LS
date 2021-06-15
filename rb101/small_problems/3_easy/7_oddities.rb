# frozen_string_literal: false
#
# Write a method that returns an Array that contains every other
# element of an Array that is passed in as an argument.
# The values in the returned list should be those values that are
# in the 1st, 3rd, 5th, and so on elements of the argument Array.

system('clear')

# --- MY SOLUTION ---
def oddities(arr)
  arr.delete_if { |e| arr.index(e) % 2 != 0 }
end

def evens(arr)
  arr.delete_if { |e| arr.index(e) % 2 == 0 }
end

array = Array.new()

6.times { |e| array.push(e+1) }

puts "Before cut"
p array

puts "After cut (permanent change)"
p oddities(array)

p oddities([123])


# --- CLASS SOLUTION ---
# def oddities(array)
#   odd_elements = []
#   index = 0
#   while index < array.size
#     odd_elements << array[index]
#     index += 2
#   end
#   odd_elements
# end

