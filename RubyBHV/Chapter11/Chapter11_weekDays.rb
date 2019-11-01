daysOfWeek = %w[
  Понедельник
  Вторник
  Среда
  Четверг
  Пятница
  Суббота
  Воскресенье
]

arr = []
for i in daysOfWeek do
  arr << i if i[0] == 'С'
end

puts arr

months = %w[
  Январь Февраль Март Апрель Май Июнь Июль Август Сентябрь Октябрь Ноябрь Декабрь
]

max = ''

for i in months do
  max = i if i.length > max.length
end
min = max
for y in months do
  min = y if y.length < min.length
end

puts
puts "max is #{max}"
puts "min is #{min}"
