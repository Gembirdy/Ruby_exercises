require 'date'
def month_days(month ,year=Date.today.year)
 mdays = [nil, 31,28,31,30,31,30,31,31,30,31,30,31]
 mdays[2] = 29 if Date.leap?(year)
 mdays[month]
end

def calendar(month,year)
  days = month_days(month,year)
  t = Time.mktime(year,month,1)
  first = t.wday
  list = (1..days).to_a
  weeks = [[]]
  week1 = 7 - first
  # week1.times { weeks[0] << list.shift }
  week1.times {|i| weeks[0] << list[i] }
  nweeks = list.size/7 + 1
  nweeks.times do |i|
   weeks[i+1] ||= []
    7.times do
      break if list.empty?
      weeks[i+1] << list[i + 1]
    end
  end
  
  pad_first = 7-weeks[0].size
  pad_first.times { weeks[0].unshift(nil) }
  pad_last = 7-weeks[0].size
  pad_last.times { weeks[-1].unshift(nil) }
  weeks
end

arr = calendar(12, 2008) 
public
def print_calendar(month,year)
  weeks = calendar(month,year)
  weeks.each do |wk|
   wk.each do |d|
    item = d.nil? ? " "*4 : " %2d " % d
    print item
   end
   puts
  end
  puts
end

arr = arr.print_calendar(12, 2008)