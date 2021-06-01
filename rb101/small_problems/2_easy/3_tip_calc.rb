# frozen_string_literal: false

# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both the tip
# and the total amount of the bill.

system('clear')

# --- MY SOLUTON ---
def bill_plus_gratuity(bill, tip_percent = 0)
  total = (bill + (tip_percent * bill)).round(2)
  tip = (tip_percent * bill).round(2)
  "You're total should be $#{total} with a $#{tip} tip\
 at #{tip_percent}% gratuity."
end

print 'How much is the bill? '
usr_bill = gets.chomp.to_f.round(2)

puts ('How was the service on a scale of 1 to 3?' + \
' (1 being the lowest, 3 being the highest)')
customer_service = gets.chomp.to_i

case customer_service
when 1
  puts bill_plus_gratuity(usr_bill)
when 2
  puts bill_plus_gratuity(usr_bill, 0.15)
when 3
  puts bill_plus_gratuity(usr_bill, 0.2)
else
  puts bill_plus_gratuity(usr_bill)
end

# --- CLASS SOLUTION ---
# print 'What is the bill? '
# bill = gets.chomp
# bill = bill.to_f
#
# print 'What is the tip percentage? '
# percentage = gets.chomp
# percentage = percentage.to_f
#
# tip   = (bill * (percentage / 100)).round(2)
# total = (bill + tip).round(2)
#
# puts "The tip is $#{tip}"
# puts "The total is $#{total}"
