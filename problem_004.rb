nums = (100..999)
a = Array.new
nums.each { |n|
  nums.each { |m|
    num = m*n
    a << num if num.to_s == num.to_s.reverse  
  }
}

puts a.max