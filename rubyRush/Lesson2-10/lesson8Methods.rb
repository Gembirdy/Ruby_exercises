#########################################################
##Площадь круга
# def circle
#   print 'enter radius of the first circle: '
#   radius = gets.chomp.to_f
#   area = 3.14 * radius * radius
#   print "area of the first circle is #{area}"
# end
#
#
# puts circle
# puts
# puts circle


#########################################################
##Размер колбасы
# def cutter(size)
#   arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
#   arr = arr[0..size - 1]
#   puts "вот ваша колбаса #{arr}"
# end
#
# arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
#
# puts "Вот какая палка колбасы у нас есть: \n#{arr}"
#
# puts 'сколько первых элеметов вам отрезать?: '
# cutSize = gets.to_i
# cutter(cutSize)

#############################################################
##Количество звездочек
#
# def stars(num)
#   res = '*' * num
# end
#
# print 'сколько звезд?: '
# number = gets.chomp.to_i
#
# puts 'забирай свои звои звезды ;)'
# puts stars(number)


#############################################################
##Guess the number
#git solution
def check_number(guess, number)
  if guess == number
    puts 'Ура, вы выиграли!'
    exit
  end

  if guess > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (guess - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

number = rand(1..15)

puts 'Загадано число от 1 до 15, отгадайте какое?'
guess = gets.to_i

check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

guess = gets.to_i
check_number(guess, number)

puts 'В этот раз вам не повезло. Было загадано число ' + number.to_s
