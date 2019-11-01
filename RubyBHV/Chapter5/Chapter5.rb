class User
  def user_create(fio)
    @fio = fio
  end

  def user_info
    @fio
  end
end


artyom = User.new
artyom.user_create('Сав Арт Олег')

# puts artyom.user_info()

class Point
  def set_dot_cordinates(x, y)
    @x = x
    @y = y
  end

  def get_dot_cordinate_x()
    x = @x
    puts "x = #{x}"
  end

  def get_dot_cordinate_y()
    y = @y
    puts "y = #{y}"
  end

end

a = Point.new
b = Point.new

a.set_dot_cordinates(3, 6)
b.set_dot_cordinates(-1, 5)

x_a = a.get_dot_cordinate_x.to_f
y_a = a.get_dot_cordinate_y.to_f
x_b = b.get_dot_cordinate_x.to_f
y_b = b.get_dot_cordinate_y.to_f

gipot = (x_a - x_b) ** 2 + (y_a - y_b) ** 2
puts gipot
puts gipot ** 0.5
puts
puts $LOAD_PATH.size

class Car
  def set_price(price)
    @price = price
  end

  def price
    @price
  end

  def mark(mark)
    @mark = mark
  end

end

class hellow
  def greetings
    puts 'hell'
  end

end
