class Integer
    def minutes_into_sec
        self * 60
    end

    def hours_into_sec
        self * 3600
    end

    def days_into_sec
        self * 86400
    end

end

puts 5.minutes_into_sec
puts 2.hours_into_sec
puts 1.days_into_sec