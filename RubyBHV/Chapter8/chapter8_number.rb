fst = gets.to_i
scd = gets.to_i
thd = gets.to_i

if fst >= scd && fst >= thd
  puts "#{fst} is maxx"
elsif fst <= scd && scd >= thd
  puts "#{scd} is maxx"
elsif fst <= thd && scd <= thd
  puts "#{thd} is maxx"
else
  puts 'error'
end
