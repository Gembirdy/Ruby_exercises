print 'enter first num: '
fnum = gets.chomp.to_i
print 'enter second num: '

snum = gets.chomp.to_i
while snum == 0
  print 'enter second num: '
  snum = gets.chomp.to_i
end

print "#{fnum} / #{snum} = #{fnum / snum.to_f}"
