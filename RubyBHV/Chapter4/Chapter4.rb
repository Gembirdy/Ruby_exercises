pi = 3.1415926535
puts pi.to_s[0,4]
puts
daysOfWeek = %w[понедельник вторник среда четверг пятница суббота воскресенье]
puts daysOfWeek

rainbowColors = {red: 'красный',orange: 'оранжевый', yellow: 'желтый',
                green: 'зеленый', skyBlue: 'голубой', blue: 'синий',
                violet: 'фиолетовый'}
currentDayStatus = ''
currentTime = 23
if (5..11).include? currentTime
  currentDayStatus = 'morning'
elsif (12..17).include? currentTime
  currentDayStatus = 'day'
elsif (18..24).include? currentTime
  currentDayStatus = 'evening'
elsif (0..5).include? currentTime
  currentDayStatus = 'night'
else
  puts 'error'
end
puts
puts currentDayStatus

colors = %w[красный оранжевый желтый зеленый голубой синий фиолетовый]
puts
puts colors[rand(0..6)]

a = {x: 3, y: 9}
b = {x: 5, y: 5}

puts (a[:x] - b[:x]) ** 2
puts (a[:y] - b[:y]) ** 2
gip = (a[:y] - b[:y]) ** 2 + (a[:x] - b[:x]) ** 2
puts gip ** 0.5
puts
puts 'help'
help = 'help'
puts help.reverse

puts '    help    him   .       '
helphim = '    help    him   '

puts helphim.strip

puts help + ' me'
