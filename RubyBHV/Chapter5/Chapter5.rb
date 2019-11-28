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
  attr_accessor :price, :mark, :wheels, :weidth
  

  $cars_counter = 0
  def initialize()
    $cars_counter += 1
  end

  def size
    $cars_counter
  end

  alias length size
end

audi = Car.new
audi.price, audi.mark, audi.wheels, audi.weidth = 80_000.to_s + ' $', 'AUDI R8', 4, 6050
puts audi.mark, audi.price, audi.wheels, audi.weidth

hammer = Car.new
hammer.price, hammer.mark, hammer.wheels, hammer.weidth = 100_000.to_s + ' $', 'HAMMER H3', 6, 7800
puts hammer.mark, hammer.price, hammer.wheels, hammer.weidth

belarus = Car.new
belarus.price, belarus.mark, belarus.wheels, belarus.weidth = 20_000.to_s + ' $', 'BELARUS T7', 4, 10050
puts belarus.mark, belarus.price, belarus.wheels, belarus.weidth

# puts $cars_counter