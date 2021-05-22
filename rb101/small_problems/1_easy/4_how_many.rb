# frozen_string_literal: false

# Write a method that counts the number of occurences of each element in
# a given array.

# --- MY SOLUTION ---

def count_occurrences(array)
  array.map(&:capitalize!)

  occurences = Hash.new() # can also initialize 0 to avoid nil

  array.each do |element|
    if occurences[element].nil?
      occurences[element] = 1
    else
      occurences[element] += 1
    end
  end

  occurences = sort_list(occurences)
  occurences
end

def sort_list(list)
  list.sort_by { |k, v| -v }
end

vehicles = %w[
  car car truck Car SUV truck
  motorcycle motorcycle car truck
]

results = count_occurrences(vehicles)

results.each { |key, value| puts "#{key} = #{value}" }

# --- CLASS SOLUTION ---
# class utilizes Array#uniq and Array#count methods

# def count_occurrences(array)
#   occurrences = {}
#
#   array.uniq.each do |element|
#     occurrences[element] = array.count(element)
#   end
#
#   occurrences.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end
