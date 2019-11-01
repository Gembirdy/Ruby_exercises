require 'date'

puts Time.now
curYear = Time.now.to_s[0, 4]
puts curYear

def isLeap?(year)
  if year % 4 == 0
    res = true
  else
    res = false
  end
  puts res
end

isLeap?(curYear.to_i)
