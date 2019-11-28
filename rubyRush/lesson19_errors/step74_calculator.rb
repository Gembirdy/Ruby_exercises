puts 'first num: '
first_num = gets.to_f
puts 'second num: '
second_num = gets.to_i

puts 'select an operation (+ - * /)'
operator = gets.chomp

case operator
    when '+'
        puts "result - #{first_num + second_num}"
    when '-'
        puts "result - #{first_num - second_num}"
    when '/'

        begin
            puts "result: #{first_num / second_num}"
        rescue ZeroDivisionError
            puts 'u can\'t devide by zero'
        end
    
    when '*'
        puts "result - #{first_num * second_num}"

    else
        puts 'no such operation'
end