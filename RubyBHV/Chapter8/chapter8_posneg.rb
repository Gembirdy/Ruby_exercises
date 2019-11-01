num = ''
# puts num.class

if num.class == Integer || num.class == Float

  if num >= 0
    puts "#{num} is positive"
  else
    puts "#{num} is negative"
  end

else
  puts 'not a num'

end
