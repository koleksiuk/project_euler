a = Array.new

999.downto(100) { |n|
  999.downto(n) { |m|
    num = m*n
    a << num if num.to_s == num.to_s.reverse  
  }
}

puts a.max