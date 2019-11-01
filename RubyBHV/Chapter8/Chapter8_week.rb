class Guess_day
  def days(num)
    case num
    when 1
      puts 'mon'
    when 2
      puts 'tue'
    when 3
      puts 'wen'
    when 4
      puts 'thu'
    when 5
      puts 'fri'
    when 6
      puts 'sat'
    when 7
      puts 'sun'
    else
      puts 'nil'
    end
  end
end

p = Guess_day.new
puts p.days(6)
