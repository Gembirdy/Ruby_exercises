def roll_sleep_clear(sleep_time = 0)
  puts "кубик вращается: #{rand(1..6)}"
  sleep sleep_time
  puts `clear`
end


n = 15
n.times do |i|  
  case i
  when n - 1 
    roll_sleep_clear
    puts "кубик остановился на #{rand(1..6)}"
  else
    roll_sleep_clear(i/20.0)
  end
end
