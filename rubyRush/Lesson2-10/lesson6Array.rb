puts "Start"
sleep 1

puts "Первый километр"
sleep 1

puts "Второй километр"
sleep 1

puts "Третий километр"
sleep 1

puts "Finish!"

male = ["vlad", "stas", "misha"]
female = ["vlada", "katya", "masha"]

all = male + female
print all
puts ""
print male.reverse

cars = ['tayota', 'bmw', 'mercedes', 'audi', 'reno', 'pegout', 'mazda', 'lada']
puts ("we have #{cars.length()} cars, select one")
numOfCar = gets.chomp.to_i()
if numOfCar < 0
  puts("error")
else
puts("ur car is #{cars[numOfCar - 1]}")
end

puts("Select one: 1 - paper, 2 - rock, 3 - scissors")
userSelect = gets.chomp.to_i()
if userSelect == 1
  puts("ur selection is paper")
elsif userSelect == 2
  puts("ur selection is rock")
elsif userSelect == 3
  puts("ur selection is scissors")
else
  puts("wrong input")
end

randomNum = rand(1..3)

if randomNum == 1
  puts("computer selection is paper")
  compSelect = 1
elsif randomNum == 2
  puts("computer selection is rock")
  compSelect = 2
elsif randomNum == 3
  puts("computer selection is scissors")
  compSelect = 3
end

if userSelect == compSelect
  puts("draw")
elsif userSelect == 1 && compSelect == 2
  puts("u wins")
elsif userSelect == 1 && compSelect == 3
  puts("comp wins")
elsif userSelect == 2 && compSelect == 1
  puts("comp wins")
elsif userSelect == 2 && compSelect == 3
  puts("u wins")
elsif userSelect == 3 && compSelect == 1
  puts("u wins")
elsif userSelect == 3 && compSelect == 2
  puts("comp wins")
end
