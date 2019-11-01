def sum(*arr)
  i = 0
  sum = 0
  while i <= arr.size do
    sum += arr[i].to_i
    i += 1
  end

  puts sum
end

sum(1, 999)
