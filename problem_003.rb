require "benchmark"
 
time = Benchmark.measure do
  number = 600851475143
  m = Array.new
  num = (1..Math.sqrt(600851475143).to_i)
  num.each {|n|
    unless (number%n != 0)
      number /= n
      m << n
    end
  }
  puts m.max
end

puts time