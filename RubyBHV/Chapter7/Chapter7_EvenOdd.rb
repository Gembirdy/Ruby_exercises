print 'enter a num: '
num = gets.chomp.to_i()

if (num & 1) == 1
  print "#{num} is odd"
else
  print "#{num} is even"
end

p = Math::PI

puts "pi num is %.2f" %p
