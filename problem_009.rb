range = (1..500)
max = 0
range.each do |n|
  range.each do |m|
    n2,m2 = n*n, m*m
    sum = n+m
    o = (1000-sum)
    if o*o == n2 + m2
      puts "#{n} + #{m} = #{o}"
      max = n*m*o if n*m*o > max
    end
  end
end

puts max