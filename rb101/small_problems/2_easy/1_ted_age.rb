# frozen_string_literal: false

# Build a program that randomly generates and prints Teddy's age.
# To get the age, you should generate a random number between 20 and 200.
# ask for a name, and then print the age for
# that person. For an extra challenge, use "Teddy" as the name
# if no name is entered.

system('clear')

# MY SOLUTION
def age_profile(name = 'Teddy')
  "#{name} is #{rand(20..200)} years old!"
end

puts 'Enter a name to use...'

usr_input = gets.chomp.strip

puts usr_input == '' ? age_profile : age_profile(usr_input)

# CLASS SOLUTION
# same as mine
