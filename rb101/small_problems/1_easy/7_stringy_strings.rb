# frozen_string_literal: false

# Write a method that takes one argument, a positive integer,
# and returns a string of alternating 1s and 0s, always starting with 1.
# The length of the string should match the given integer.


system('clear')

# --- MY SOLUTION ---
def stringy(int)
  stringy = String.new

  (1..int).each { | n | n.odd? ? stringy << '1' : stringy << '0'}

  stringy
end

puts "Enter in a positive number and I'll print 1's and 0's"

usr_int = gets.chomp.to_i

if usr_int <= 0
  puts "Number not positive..."
else
  result = stringy(usr_int)
end

puts result

# --- CLASS SOLUTION ---
# def stringy(size)
#   numbers = []
#
#   size.times do |index|
#     number = index.even? ? 1 : 0
#     numbers << number
#   end
#
#   numbers.join
# end
