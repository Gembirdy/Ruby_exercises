number = ARGV[0]

if Gem.win_platform? && ARGV[0]
  number = number.encode('UTF-8')
end
i = 1
fact = 1
while i <= number.to_i do
  fact *= i
  i += 1
end

p fact
