number = ARGV[0]

if Gem.win_platform? && ARGV[0]
  number = number.encode('UTF-8')
end

if (number.to_i % 2) == 0
  p "#{number} is even"
else
  p "#{number} is odd"
end
