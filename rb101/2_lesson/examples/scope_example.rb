# This is a program that demonstrates how to variable scope works in ruby

# Example 1
x = 0
3.times do
  x += 1
end
puts x

# Example 2
a = 0
3.times do
  a += 1
  b = a
end
puts b

# Answer 1
# The first example will output 3 because the variable 'x' was initalized outside of
# the method invocation.

# Answer 2
# The 2nd example will raise an error, 'undefined local variable or method' 
# because b is initialized within the method invocation.
