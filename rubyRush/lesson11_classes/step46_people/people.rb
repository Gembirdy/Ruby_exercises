# class People
    
#     def initialize(name, surname, age)
#         @name = name
#         @age = age
#         @surname = surname
#     end

#     def getFullInfo
#         @ageStatus = ''
#         if @age >= 60
#             @ageStatus = 'old'
#         else
#             @ageStatus = 'young'
#         end
#         return "#{@name} #{@surname}\nHis age is #{@age} - #{@ageStatus}"
#     end

# end

# artem = People.new('art', 'sava', 20)
# vik = People.new('vik', 'kul', 20)
# igor = People.new('ig', 'strakosha', 60)

# puts "we have some people: "
# puts artem.getFullInfo
# puts vik.getFullInfo
# puts igor.getFullInfo

class Bodybuilder
    
    def initialize(biceps = 1, triceps = 1, delta = 1)
        @biceps = biceps
        @triceps = triceps
        @delta = delta
    end

    def pump(muscle)
        case muscle
        when 'triceps'
            @triceps += 1
        when 'biceps'
            @biceps += 1
        when 'delta'
            @delta += 1
        end
    end

    def show_muscle
        puts "triceps - #{@triceps}"
        puts "biceps - #{@biceps}"
        puts "delta - #{@delta}"                
    end

end

body1 = Bodybuilder.new
body2 = Bodybuilder.new(2, 2, 2)
body3 = Bodybuilder.new(3, 3, 3)

5.times do
    body1.pump('biceps')
    body1.pump('triceps')
    body1.pump('delta')
end

puts 'bodybuilder1 :'
body1.show_muscle
puts
puts 'bodybuilder2 :'
body2.show_muscle
puts
puts 'bodybuilder3 :'
body3.show_muscle