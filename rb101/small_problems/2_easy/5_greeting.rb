# frozen_string_literal: false

# Write a program that will ask for user's name.
# The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

system('clear')

# --- MY SOLUTION ---
def soft_greet(name)
  "Hello #{name} :^}."
end

def harsh_greet(name)
  "HELLO #{name.upcase}. WHY ARE WE SCREAMING :^0?"
end

def welcome
  puts 'What is your name?'
  gets.chomp
end

usr_name = welcome

if usr_name.split('').last == '!'
  usr_name = usr_name.split('').keep_if { |e| e != '!' }.join
  puts harsh_greet(usr_name)
else
  puts soft_greet(usr_name)
end

# --- CLASS SOLUTON ---
# print 'What is your name? '
# name = gets.chomp
#
# if name[-1] == '!'
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#   puts "Hello #{name}."
# end
