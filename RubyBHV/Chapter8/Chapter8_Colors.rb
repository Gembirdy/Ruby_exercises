class Guess_color
  def colors(num)
    case num
    when 1
      puts 'red'
    when 2
      puts 'orange'
    when 3
      puts 'yellow'
    when 4
      puts 'green'
    when 5
      puts 'sky blue'
    when 6
      puts 'blue'
    when 7
      puts 'violet'
    else
      puts 'nil'
    end
  end
end

p = Guess_color.new
puts p.colors(10)
