# frozen_string_literal: false

# Description: Write a method that takes a year as input and returns
# the century. The return value should be a string that begins with the century
# number, and ends with st, nd, rd, or th as appropriate for that number.
#
# New centuries begin in years that end with 01. So, the years 1901-2000
# comprise the 20th century.

system('clear')

# --- MY SOLUTION ---

def century(date)
  century = 99 + date
  century = century.to_s.split('')

  2.times { century.delete_at(-1) }
  century = add_suffix(century)
end

def add_suffix(century)
  case
  when century[-1] == '1' && (century[-2].nil? || century[-2] != '1')
    century.push('st')
  when century[-1] == '2' && (century[-2].nil? || century[-2] != '1')
    century.push('nd')
  when century[-1] == '3' && (century[-2].nil? || century[-2] != '1')
    century.push('rd')
  else
    century.push('th')
  end

  century.join
end

puts 'Enter a year'
year = gets.chomp.to_i

puts "#{century(year)} century."

# --- CLASS SOLUTION ---
# def century(year)
#   century = year / 100 + 1
#   century -= 1 if year % 100 == 0
#   century.to_s + century_suffix(century)
# end
#
# def century_suffix(century)
#   return 'th' if [11, 12, 13].include?(century % 100)
#   last_digit = century % 10
#
#   case last_digit
#   when 1 then 'st'
#   when 2 then 'nd'
#   when 3 then 'rd'
#   else 'th'
#   end
# end
