# viktoriyakul7@gmail.com
require "pony"
require "io/console"

my_email = "artem-savinkov@mail.ru"

begin
    print "enter password for #{my_email} to send the message: "
    password = STDIN.noecho(&:gets).chomp

    print "\nYou want to send message to: "
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

rescue SocketError
    puts 'no internet connection'

rescue Net::SMTPSyntaxError => error
    puts 'wrong letter parametrs: ' + error.message

rescue Net::SMTPAuthenticationError => error
    puts 'authentification failed. Wrong password ' + error.message
end