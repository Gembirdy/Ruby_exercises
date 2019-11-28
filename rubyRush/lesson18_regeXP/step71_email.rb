puts 'enter email: '
user_string = gets.chomp
email_regexp = /^[a-z\d_+.\-]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+$/i
if user_string.match(email_regexp)
    puts 'ok'
else
    puts 'not an email'
end