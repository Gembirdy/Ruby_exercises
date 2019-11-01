print 'number: '
number = gets.chomp.to_i()
print 'stepen: '
stepen = gets.chomp.to_i()

res = 1
stepen.times do
  res *= number
end

puts res
puts 3 ** 9
