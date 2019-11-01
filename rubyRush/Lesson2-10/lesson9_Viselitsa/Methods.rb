def get_letters

  slovo = ARGV[0]

  if Gem.win_platform? && ARGV[0]
    slovo = slovo.encode('UTF-8')
  end

  if slovo == nil || slovo == ''
    abort 'Вы не ввели слово'
  end

  return slovo.split('')

end

# puts get_letters.to_s

def get_user_input
  letter = ''

  while letter == '' do
    letter = STDIN.gets.encode("UTF-8").chomp
  end

  return letter
end



#
# def check_result(user_input, letters, good_letters, bad_letters)
#
#   if good_letters.include?(user_input) || bad_letters.include?(user_input)
#     return 0
#   end
#
#   if letters.include?(user_input) ||
#       (user_input == 'е' && letters.include?('ё')) ||
#       (user_input == 'ё' && letters.include?('е')) ||
#       (user_input == 'и' && letters.include?('й')) ||
#       (user_input == 'й' && letters.include?('и'))
#
#
#       good_letters << user_input
#
#
#     if user_input == 'е'
#       good_letters << 'ё'
#     end
#
#     if user_input == 'ё'
#       good_letters << 'е'
#     end
#
#     if user_input == 'и'
#       good_letters << 'й'
#     end
#
#     if user_input == 'й'
#       good_letters << 'и'
#     end
#
#       if letters.uniq.size == good_letters.size
#         return 1
#       else
#         return 0
#       end
#
#   else
#     bad_letters << user_input
#     return -1
#   end
#
# end
#
#
def get_word_for_print(letters, good_letters)
  result = ''

  for letter in letters do
    if good_letters.include?(letter)
      result += letter + ' '
    else
      result += '__ '
    end
  end
  return result

end

#
#
# # выводить загаданное слово как в поле чудеc    +
# # инфу об ошибках и уже введенных буквах        +
# # если ошибок > 7 - сообщить о поражении        +
# # если слово угадано - сообщить о победе        +
# def print_status(letters, good_letters, bad_letters, errors)
#   puts "\nСлово: " + get_word_for_print(letters, good_letters)
#
#   puts "Ошибки - (#{errors}): #{bad_letters.join(', ')}"
#
#   if errors >= 7
#     puts 'вы проиграли :( )'
#   else
#     if letters.uniq.size == good_letters.size
#       puts "Поздравляю, ви виграли!\n\n"
#     else
#       puts "У вас осталось попыток:  #{7 - errors}"
#     end
#   end
# end
#
#


def check_input(user_input, letters, good_letters, bad_letters)
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end

  # Условие для проверки, подходит ли нам введенная пользователем буква теперь
  # станет немного сложнее. Оно теперь будет состоять из четырех случаев:
  #
  # 1. Сама введенная буква есть в слове
  # 2. Ввели букву е, а в слове есть буква ё
  # 3. Ввели букву ё, а в слове есть буква е
  # 4. Ввели букву и, а в слове есть буква й
  # 5. Ввели букву й, а в слове есть буква и
  if letters.include?(user_input) ||
     (user_input == 'е' && letters.include?('ё')) ||
     (user_input == 'ё' && letters.include?('е')) ||
     (user_input == 'и' && letters.include?('й')) ||
     (user_input == 'й' && letters.include?('и'))
    # В любом (поэтому эти условия объединяет оператор ||) из этих случаев мы
    # добавляем в массив хороших букв ту, что была введена пользователем и
    # её подружку, если есть (считаем «подружками» е + ё» и и + й).
    good_letters << user_input

    if user_input == 'е'
      good_letters << 'ё'
    end

    if user_input == 'ё'
      good_letters << 'е'
    end

    if user_input == 'и'
      good_letters << 'й'
    end

    if user_input == 'й'
      good_letters << 'и'
    end

    if (letters - good_letters).empty?
      return 1
    else
      return 0
    end

  else
    bad_letters << user_input
    return -1
  end
end

def print_status(letters, good_letters, bad_letters, errors)
  puts "\nСлово: #{get_word_for_print(letters, good_letters)}"

  puts "Ошибки (#{errors}): #{bad_letters.join(', ')}"

  if errors >= 7
    puts 'Вы проиграли :('
  else
    if (letters - good_letters).empty?
      puts "Поздравляем, вы выиграли!\n\n"
    else
      puts 'У вас осталось попыток: ' + (7 - errors).to_s
    end
  end
end


def cleanScreen
  system "cls" or system "clear"
end
