# viktoriyakul7@gmail.com
require "pony"
require "io/console"

my_email = "artem-savinkov@mail.ru"

puts "enter password for #{my_email} to send the message: "
password = STDIN.noecho(&:gets).chomp

print "You want to send meassage to: "
send_to = STDIN.gets.chomp

puts "what is the subject of ur letter? "
subject = STDIN.gets.chomp                  # "hello, i was send from ruby programm"

puts "what do you want to send? "
body = STDIN.gets


Pony.mail(
    {
        :subject => subject,
        :body => body,
        :to => send_to,
        :from => my_email, 

        :via_options => {
            :address => 'smtp.mail.ru',
            :port => '465',
            :tls => true,
            :user_name => my_email,
            :password => password,
            :authentication => :plain
          }
    }
)

puts "letter was send to #{send_to}"