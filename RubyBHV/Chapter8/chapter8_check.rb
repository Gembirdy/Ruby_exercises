# input = gets.chomp

arr = [1, 1.2, 'some string', true, 1..2]


ranArr = rand(0..arr.size)
puts arr[ranArr]



input = arr[ranArr]

case input
when Integer
  puts 'int num'
when Float
  puts 'float num'
when String
  puts 'string type'
else
  puts 'smth else'
end
