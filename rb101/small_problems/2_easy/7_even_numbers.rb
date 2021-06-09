# frozen_string_literal: false

# Print all even numbers from 1 to 99, inclusive, to the console,
# with each number on a separate line.

# --- MY SOLUTIONS ---
(1..99).map { |n| puts n if n % 2 == 0 }

# challenge

puts (1..99).select(&:even?)

# --- CLASS SOLUTIONS ---
# value = 1
# while value <= 99
#   puts value if value.even?
#   value += 1
# end
