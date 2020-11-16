
# Use irb to run the following codes
#
# a = [5, 9, 3, 11]
# puts a.min
#
# Find the documentation for the #min method and change the above code to print the two smallest values in the Array.

a = [5, 9, 3, 11]
p a.min(2)
#=> [3, 5]

a = [5, 9, "3", 11]
p a.min(2)
# => ArgumentError

a = ["266", "125", "350"]
p a.min(2)
#=> ["125", "266"]
#

########## LS Side Notes ###########
=begin
   A solution that uses the #min method alone requires version 2.2.0 or higher of Ruby. If you have an older version of Ruby, you need a different approach.
   pre-2.2.0 versions of Ruby would look like this
     a = [5, 9, 3, 11]
     puts a.sort.take(2)
   Ruby accomplishes this through what they call "mix-in modules". They provide a way for classes of different types to share behaviors without using inheritance.
   A class can use a mix-in module by using the include method. Once included, all the mix-in's methods become available to objects of the class.
   one commonly used mix-in is the ruby Enumerable module.
 
=end

