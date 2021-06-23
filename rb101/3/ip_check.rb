#frozen_string_literal: false

# This is a program to complement rb101 Lesson 3 Section hard 1, Answer 4
# This program will check if an ip address, entered as a string,
# is a valid ip address

def is_an_ip_number?(ip_array)
  ip_array.each do |digit|
    if !(0..255).include?(digit.to_i)
      return false
    end
  end
end

def dot_separated_ip_address?(input_string)
  ip_as_array = input_string.split(".")
  ip_as_array.length == 4 && is_an_ip_number?(ip_as_array)
end

puts dot_separated_ip_address?("108.0.0.255") ? "IPv4 address" : "Not an IPv4 address"
