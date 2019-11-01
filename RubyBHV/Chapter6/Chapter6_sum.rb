number = ARGV[0]

if Gem.win_platform? && ARGV[0]
  number = number.encode('UTF-8')
end

i = 0
sum = 0

n = ARGV.size
argstr = '"' + ARGV*"," + '"'
puts "Мне было передано аргументов: #{n}..."
puts "Вот они: #{argstr}"
puts "Заметьте, что ARGV[0] = #{ARGV[0]}"

while i <= n do
  sum += ARGV[i].to_i
  i += 1
end
 puts sum
