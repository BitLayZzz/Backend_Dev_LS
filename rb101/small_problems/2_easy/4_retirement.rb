# frozen_string_literal: false

# Build a program that displays when the user will retire
# and how many years she has to work till retirement.

require 'date'

system('clear')

# --- MY SOLUTION ---
def get_age
  puts "How old are you?"
  gets.chomp.to_i
end

def get_retirement_age
  puts "What age do you want to retire?"
  gets.chomp.to_i
end

def get_retirement_year(current_age, retirement_age)
  retirement_year = Date.today.year + (retirement_age - current_age)
end

puts "Retirement!"

age = get_age

if age <= 0
  puts "...ending program"
  break
end

desired_retirement = get_retirement_age

year_free = get_retirement_year(age, desired_retirement)

puts "You will be retiring in #{year_free}!"

# --- CLASS SOLUTION ---
# print 'What is your age? '
# current_age = gets.to_i
#
# print 'At what age would you like to retire? '
# retirement_age = gets.to_i
#
# current_year = Time.now.year
# work_years_to_go = retirement_age - current_age
# retirement_year = current_year + work_years_to_go
#
# puts "It's #{current_year}. You will retire in #{retirement_year}. "
# puts  "You have only #{work_years_to_go} years of work to go!"

