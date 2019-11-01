require "translit"

puts 'enter phrase to translite: '
phrase = gets.chomp
puts Translit.convert(phrase)



# puts Translit.convert("Отличный день") => Otlichnyj den'