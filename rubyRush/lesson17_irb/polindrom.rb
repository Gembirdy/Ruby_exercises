puts 'enter a polyndrom candidate: '
original_string = gets.chomp
handled_string = original_string.strip.downcase.gsub(' ', '').gsub(',', '').gsub('.', '')

reverse_srting = handled_string.reverse

if handled_string == reverse_srting
    print "it's a polyndrom\n"
else
    print "not a polyndrom\n"
end
