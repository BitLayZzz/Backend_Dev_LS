# frozen_string_literal: false

# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not
# the 6th number appears amongst the first 5 numbers.

system('clear')

# --- MY SOLUTION ---

def num_search(first_five, sixth)
  occurrences = first_five.filter { |n| n.eql?(sixth) }

  if occurrences.empty?
    "#{sixth} does not appear in #{first_five}."
  elsif occurrences.length == 1
    "#{sixth} appears in #{first_five} once."
  else
    "#{sixth} appears in #{first_five} #{occurrences.length} times."
  end
end

usr_array = Array.new()

6.times do |n|
  puts "==> Enter Number #{n + 1}:"
  usr_num = gets.chomp.to_f
  usr_array[n] = usr_num
end

answer = num_search(usr_array.take(5), usr_array.pop)

puts answer
