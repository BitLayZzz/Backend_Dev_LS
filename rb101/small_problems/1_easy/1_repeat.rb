# frozen_string_literal: false

# instructions
# Write a method that takes two arguments, a string and a positive integer,
# and prints the string as many times as the integer indicates
#
# Example repeat('Hello' 3)

# --- My Solution ---

def my_repeat(string, int)
  n = 1

  int.times do
    puts "#{n} : #{string}"
    n += 1
    if n > 100
      puts "Okay, that's too many. Ending Program."
      break
    end
  end
end

puts '=> Enter a word.'

user_string = gets.chomp

puts '=> Enter an integer/whole number to output the word that amount of times.'

user_int = gets.chomp

if user_int.to_i.to_s.to_i != user_int.to_i
  puts '=> Not a valid number. Ending Program.'
else
  my_repeat(user_string, user_int.to_i)
end

# --- Class Solution ---

# def repeat(string, number)
#   number.times do
#     puts string
#   end
# end
