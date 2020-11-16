# use irb to run the following code:
#
# s = 'abc'
# puts s.public_methods.inspect
#
# You should find that it prints a list of all of the public methods available to the String s; this includes not only those methods defined in the String class, but also methods that are inherited from OBject (which inherits other methods from the BasicObject class and the Kernel module). That's a lot of methods.
#
# How would you modif this code to print just the public methods that are defined or overridden by the String class? That is, the list should exclude all members that are only defined in Object, BasicObject, and Kernel.
#

s = 'abc'
all_methods = s.public_methods.inspect
just_string_methods = s.public_methods(false).inspect

puts all_methods != just_string_methods ? "These arrays are different." : "These arrays are the same."
#=> These arrays are different.



######### LS Side Notes ############
# ruby is an object oriented language. Every value in Ruby is an object, which means that it has an associated class, and that class in turn has a superclass, or parent. Every clas that inherits from a superclass also inherits all of its methods.
# Always look at docuentation for you class before looking at the documentation for the superclass. Even if you know that the superclass has a particular method, you should always check that it isn't being overridden by the subclass.
