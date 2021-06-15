# frozen_string_literal: false

# The || operator returns a truthy value if either
# or both of its operands are truthy. If both operands are falsey,
# it returns a falsey value. The && operator returns a truthy value
# if both of its operands are truthy, and a falsey value if either
# operand is falsey. This works great until you need only one of two
# conditions to be truthy, the so-called exclusive or.

# In this exercise, you will write a function named xor that takes
# two arguments, and returns true if exactly one of its arguments
# is truthy, false otherwise. Note that we are looking for a boolean
# result instead of a truthy/falsy value as returned by || and &&.

system('clear')

# --- MY SOLUTION ---
def xor?(num_1, num_2)
  if (num_1 == true && num_2 == false) || (num_1 == false && num_2 == true)
    true
  else
    false
  end
end

puts 'Enter x'
usr_x = gets.chomp.to_i

puts 'Enter y'
usr_y = gets.chomp.to_i

puts xor?(usr_x.even?, usr_y.odd?)

# --- CLASS SOLUTION ---
# def xor?(value1, value2)
#   !!((value1 && !value2) || (value2 && !value1))
# end
