def cel2far(num)
  far = (num.to_f * 9/5 + 32).to_f
  puts "#{num} C is #{far.round(2)} in F"
end

def far2cel(num)
  cel = (num.to_f - 32) * 5/9
  puts "#{num} F is #{cel.round(2)} in C"
end

cel2far(-17.22)
far2cel(33.8)
