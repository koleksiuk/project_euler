sum = 0
(1..1000).each do |v|
  sum += v**v 
end
a = sum.to_s
puts a[a.length-10..a.length]