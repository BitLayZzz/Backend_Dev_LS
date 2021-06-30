# frozen_string_literal: false
#
# Description: The British Empire adopted the Gregorian Calendar in 1752,
# which was a leap year. Prior to 1752, the Julian Calendar was used.
# Under the Julian Calendar, leap years occur in ANY year that is evenly
# divisble by 4.

system('clear')

# --- MY SOLUTION ---
def leap_year?(year)
  return false if !((year % 4).zero?)

  (year > 1752) ? ((year % 100).zero? ? (year % 400).zero? : true) : true
end

puts "Enter a year"

year = gets.chomp.to_i

puts leap_year?(year)


# --- CLASS SOLUTION ---
# def leap_year?(year)
#   if year < 1752 && year % 4 == 0
#     true
#   elsif year % 400 == 0
#     true
#   elsif year % 100 == 0
#     false
#   else
#     year % 4 == 0
#   end
# end
