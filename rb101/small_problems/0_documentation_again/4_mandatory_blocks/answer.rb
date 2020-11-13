def greater_than_8(ary)
  a = ary.bsearch { |x| x.to_f > 8 } 
  a.nil? || a.to_f < 8 ? "No number greater than 8" : a
end


ary = [0, 4, 7, 10, 12]
puts greater_than_8(ary)
#=> 10

# Shouldn't this return 14?
ary = [14, 3, 7]
puts greater_than_8(ary)
#=> "No number greater than 8" 

# THERE IT IS! 
ary = [14, 13, 7]
puts greater_than_8(ary)
#=> 14 

ary = [8, 8, 8, 8]
puts greater_than_8(ary)
#=> "No number greater than 8"

ary = [8.01, 123]
puts greater_than_8(ary)
#=> 8.01

ary = ["one hundred", "151", "120", 9]
puts greater_than_8(ary)
#=> 151

