puts 'enter a string with a hashtag: '
string = gets.chomp

puts string =~ /#[a-z]*[,.?!]$/
