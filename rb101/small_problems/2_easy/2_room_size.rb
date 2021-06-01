# frozen_string_literal: false

# Build a program that asks a user for the length and width of a room in
# meters and then displays the area of the room in both square meters
# and square feet.
#
# Note: 1 square meter == 10.7639 square feet
#
# Do not worry about validating the input at this time.

system('clear')

# --- MY SOLUTION ---
def area_in_meters(length, width)
  (length * width).floor(2)
end

def meters_2_feet(meters_squared)
  (meters_squared * 10.7639).floor(2)
end

puts 'Enter the length of your room in meters:'
usr_length = gets.chomp.to_f

puts 'Enter the width of your room in meters:'
usr_width = gets.chomp.to_f

meters = area_in_meters(usr_length, usr_width)

feet = meters_2_feet(meters)

puts "The area of the room is #{meters} square meters (#{feet} square feet.)"

# --- CLASS SOLUTION ---
# SQMETERS_TO_SQFEET = 10.7639
#
# puts '==> Enter the length of the room in meters: '
# length = gets.to_f
#
# puts '==> Enter the width of the room in meters: '
# width = gets.to_f
#
# square_meters = (length * width).round(2)
# square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)
#
# puts "The area of the room is #{square_meters} " + \
#      "square meters (#{square_feet} square feet)."
#
