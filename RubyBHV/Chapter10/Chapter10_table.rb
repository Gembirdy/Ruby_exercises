print 'enter max num: '
max_iterats = gets.chomp.to_i
i = 1

size = (max_iterats * max_iterats).to_s.size + 1

while i <= max_iterats
  j = 1

  while j <= max_iterats
    print format("% #{size}d ", i * j)
    j += 1
  end

  i += 1
  puts
end
