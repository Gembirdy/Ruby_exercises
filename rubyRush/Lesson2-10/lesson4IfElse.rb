firstNum = gets.chomp()
secNum = gets.chomp()
if firstNum > secNum
  puts firstNum
elsif firstNum < secNum
  puts secNum
else
  puts("equals")
end


print("First number is: ")
firNum = gets.chomp.to_i()
print("Second number is: ")
secNum = gets.chomp.to_i()
avg = (firNum + secNum)/2
puts ("AVG is: #{avg}")


print("ur num: ")
num = gets.chomp.to_i()
if (num % 2) == 0
  puts "#{num} is even"
elsif (num % 2) == 1
  puts "#{num} is odd"
else
  puts "error"
end


time = Time.now
week_day = time.wday


if week_day.to_i() == 6 || week_day.to_i() == 0
  puts "holiday"
else
  puts "today is a work day"
end


if rand(11) == 10
  puts("Ребро")
else
  if rand(2) == 1
    puts("tail")
  else
    puts("head")
  end
end
