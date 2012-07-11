a,b = Array.new, Array.new
(99..999).step(11) do |n|
  a.unshift(n)
end

a.each do |n|
  999.downto(n).each do |m|
    num = n*m
    if (num == num.to_s.reverse.to_i)
      b << num
      break
    end
  end
end

puts b.max # >> 906609
