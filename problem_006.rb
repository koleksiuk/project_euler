a1 = (1..100).inject {|sum, n| sum += n*n }
a2 = (1..100).inject {|sum, n| sum +=n }
a2 *= a2
puts "#{a2} - #{a1} = #{a2 - a1}"