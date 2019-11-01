puts "input some colors: \nEnter 'stop' when u want to stop entering"

colorsArray = []
input = gets.chomp
while input != 'stop' do
  colorsArray << input
  input = gets.chomp
end

puts 'do u want to enter another colors?: yes / no'
userAnswer = gets.chomp
while userAnswer != 'yes' && userAnswer != 'no' do
  print "do u want to enter another colors?: yes / no\n"
  userAnswer = gets.chomp
end

if userAnswer == 'yes'
  print 'enter some more colors: '
    input = gets.chomp
    while input != 'stop' do
      colorsArray << input
      input = gets.chomp
    end

    p colorsArray.sort.uniq.reject(&:empty?).reject { |c| c.include? ' '}
else p colorsArray.sort.uniq.reject(&:empty?).reject { |c| c.include? ' '}
end
