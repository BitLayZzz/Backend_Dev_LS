# frozen_string_literal: false

# Description: Write a method that takes an Array of numbers, and returns
# an Array with the same number of elements, and each element has the running
# total from the original Array.


# --- MY SOLUTION ---
def running_total(num_array)
  running_total_array = []

  while !(num_array.empty?) do
    running_total_array.unshift(num_array.sum)
    num_array.pop
  end

  running_total_array
end



p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []


# --- CLASS SOLUTION ---
# def running_total(array)
#   sum = 0
#   array.map { |v| sum += v }
# end
