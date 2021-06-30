# frozen_string_literal: false
#
# Description: In the modern era under the gregorian calendar, leap years
# occur in every year that is evenly divisible by 4, unless the year
# is also divisble by 100. If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisble by 400.
#
# Assume this rule is good for any year greater than year 0. Write a method
# that takes any year greater than 0 as input, and returns true if the year
# is a leap year, or false if it is not a leap year.

system('clear')

# --- MY SOLUTION ---
def leap_year?(year)
  if (year % 4).zero?
    (year % 100).zero? ? (year % 400).zero? : true
  else
    false
  end
end

puts "Enter year"
year = gets.chomp.to_i

puts leap_year?(year)


# --- CLASS SOLUTION ---
# def leap_year?(year)
#   if year % 100 == 0
#     false
#   elsif year % 400 == 0
#     true
#   else
#     year % 4 == 0
#   end
# end
