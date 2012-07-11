i,max,max_n = 0, 0, 0
500_001.upto(1_000_000) do |n|
  num = n
  if (num / 2 == max_n)
    max_n = num
    max = max+1
  else
    while n != 1
      if n == max_n
        max = max + i
        max_n = num
        break
      else
        if n % 2 == 0
          n /= 2
        else
          n = (3*n +1)
        end
      end
      i += 1
    end
    if max < i
      max = i
      max_n = num
    end
  end
  i = 0
end

puts max_n