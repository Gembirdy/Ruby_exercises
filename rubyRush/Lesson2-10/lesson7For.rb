counter = 1

while counter < 6 do
  puts counter
  counter += 1
  sleep 0.5
end

eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]

good_eggs = []
broken_count = 0

for i in eggs do
  if i!=0
    broken_count += 1
  elsif
    good_eggs << i
  end
end

puts eggs.to_s
puts good_eggs.to_s
puts broken_count.to_s
puts

names = []
user_input = nil

while user_input != '' do
  user_input = gets.encode('UTF-8').chomp()
  names << user_input
end

for i in names do
  puts "С нами #{i}"
  sleep 0.5

  if i == 'Элис'
    puts 'Кто такая Элис?'
    sleep 1
    break
  end
end


print 'input n: '
n = gets.chomp.to_i()
sum = 0
nums = []
i = 1
while i <= n do
  sum += i
  nums << i
  i += 1
end

puts nums.to_s
puts sum


print 'Какой длины будет случайный массив? '
array_size = gets.chomp.to_i()
array = []
i = 0
while i <= array_size do
  array << rand(0..99)
  i += 1
end

print array
puts
print array.max





choice = 0
until choice == 1 || choice == 2 || choice == 3 do
  puts 'Введите число и нажмите Enter:'
  puts '1 – Пойти направо'
  puts '2 – Пойти налево'
  puts '3 – Пойти домой'

  # Записываем то, что выбрал пользователь, переводя его строку в число
  choice = gets.to_i
end



array = [1, 2, 3, 4, 5, 6, 7]
reverse_array = []
for i in array
  reverse_array.unshift(i)
end
puts reverse_array.to_s
