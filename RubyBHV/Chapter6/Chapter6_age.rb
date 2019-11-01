year = ARGV[0]
month = ARGV[1]
day = ARGV[2]

if Gem.win_platform? && ARGV[0]
  year = year.encode('UTF-8')
end


currentYear = 2019
currentMonth = 10
currentDay = 4


userYears = currentYear - year.to_i
userMonths = currentMonth - month.to_i
userDays = currentDay - day.to_i

if month.to_i > currentMonth
  userYears -= 1
end

if day.to_i > currentDay
  userMonths -= 1
  day = 30 - day.to_i
end


puts "ur age is #{userYears} years, #{userMonths} months, #{userDays} days"
