# Truthiness in ruby is the concept that everyhing in ruby evaluates to true unless explicitly stated to be false or nil.
#
num = 5

puts num ? "valid number" : "error"

puts nil ? "something" : "nothing"

puts num == true
#=> false

# Common code you will see to check validity
# name = find_name
# if name && name.valid?
#   puts "We have a valid name."
# else
#   puts "Name is invalid."
# end

puts "Open this file to see why we get these results."
