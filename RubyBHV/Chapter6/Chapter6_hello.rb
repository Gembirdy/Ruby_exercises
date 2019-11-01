require 'time'


class Hello
  def hello

    t = Time.now
    t = t.to_s


    puts "current time is #{t[11, 5]}"
    curTime = t[11, 2].to_i
    # curTime = 1
    # puts curTime

    case curTime
    when 0..6
      out = 'Доброй ночи'
    when 6..12
      out = 'Доброе утро'
    when 12..18
      out = 'Добрый день'
    when 18..24
      out = 'Доброй вечер'
    else
      out = 'error'
    end

    puts out
  end

end

# one = Hello.new
# puts one.hello
