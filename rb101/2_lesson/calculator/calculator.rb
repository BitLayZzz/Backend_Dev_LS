# Simple Arithmetic!

def op_assign
  begin
    puts "Enter an arithmetic operation ('+', '-', '*', '/')"
    op = gets.chomp
    raise 
  rescue
    retry if op != '+' && op != '-' && op != '*' && op != '/' && op != 'q'
  end
  
  return op
end

def num_assign(number) 
  begin
    puts "Enter your #{number} number or 'q' to quit"
    num = gets.chomp
    raise if num.to_i == 0
  rescue
    retry if num != 'q' && num != '0' 
  end

  return num
end

while true
  puts "Simple Arithmetic!" 

  first_num = num_assign("first") 
  first_num == 'q' ? break : first_num = first_num.to_f

  op = op_assign()
  break if op == 'q'

  second_num = num_assign("second") 
  second_num == 'q' ? break : second_num = second_num.to_f

  answer =
    case op
    when '+' then "#{first_num} plus #{second_num} equals #{first_num + second_num}"
    when '-' then "#{first_num} minus #{second_num} equals #{first_num - second_num}"   
    when '*' then "#{first_num} times #{second_num} equals #{first_num * second_num}"
    when '/' then "#{first_num} divided by #{second_num} equals #{first_num / second_num}"
    end

  puts answer 
  puts ""
  sleep 1
end

puts "Ending math program..."
