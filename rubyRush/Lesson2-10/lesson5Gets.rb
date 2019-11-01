# puts "Вы решили прогуляться в Южном Бутово и наткнулись на спортивных ребят
# 1. Попытаться убежать
# 2. Продолжать идти"
#
# choice = gets.chomp
#
# if choice == "1"
#   abort "Ребя без труда догнали вас и побили. Не знаю, за что"
# else
#   puts "Один из ребят вышел вперёд и спросил \"Сиги есть?\"
#   1. Дать прикурить
#   2. -- Не курю"
#
#   choice = gets.chomp
#
#   if choice == "1"
#     abort "Прикурив, ребята отправились дальше"
#   else
#     abort "Ребята расстроились и побили вас. Теперь уже ясно, за что"
#   end
# end

# puts("Сколько сейчас стоит доллар?")
# dollar = gets.chomp.to_f()
# puts("Скока у тя белорусского бобла?")
# rubles = gets.chomp.to_f()
#
# dollarStack = rubles / dollar
# puts("у тебя походу долларов #{dollarStack}")


number = rand(1..10)

puts 'загадано число от 1 до 10, отгадайте какое?'
proba = gets.chomp.to_i

if proba == number # если номер совпал
  abort 'Ура, вы выиграли!' # завершаем программу
else
  # первый вложенный if, проверка в какую сторону ошибся пользователь
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  # второй вложенный if – вывод "тепло" или "холодно"
  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end


# 2 раз
proba = gets.chomp.to_i
if proba == number
  abort 'Ура, вы выиграли!'
else
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

# 3 раз
proba = gets.chomp.to_i
if proba == number
  abort 'Ура, вы выиграли!'
else
  if proba > number
    puts 'нужно меньше'
  else
    puts 'нужно больше'
  end

  if (proba - number).abs < 3
    puts 'Тепло'
  else
    puts 'Холодно'
  end
end

puts 'В этот раз вам не повезло. Было загадано число ' + number.to_s
