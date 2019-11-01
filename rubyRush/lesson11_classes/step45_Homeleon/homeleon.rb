class Homeleon
    def initialize
        @color = 'green'
        puts "i'm #{@color}"
    end

    def changeColor(color)
        @color = color
        puts "now i'm #{@color}"
    end
end

homeleon = Homeleon.new
homeleon.changeColor('red')
homeleon.changeColor('blue')
homeleon.changeColor('gay')
homeleon.changeColor('white')