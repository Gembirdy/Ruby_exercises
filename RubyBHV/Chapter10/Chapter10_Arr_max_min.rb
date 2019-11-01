i = 0
arr = []
while i < 10
  arr << rand(0..99)
  i += 1
end
print arr
puts
print "max value is: #{arr.max}\n"
print "min value is: #{arr.min}"
