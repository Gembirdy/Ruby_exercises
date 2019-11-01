array = %w[cat dog tiger]
element = ''
newArr = []

for element in array do
  newArr << element if element.include? 't'
end
p newArr
puts

secArr = []
for element in array do
  upElement = element[0].upcase + element[1..element.length]
  secArr << upElement
end

p secArr
