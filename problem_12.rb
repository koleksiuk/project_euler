require 'mathn'

class Divisors
  def initialize(max)
    @primes =  (1..max).select {|v| Prime.prime?(v) }
  end
  
  def dist (number)
    @s = Array.new
    tab = Array.new
    while number != 1
      t = @primes.select {|v| number % v == 0 }
      #puts "#{number} dziele przez pierwsza liczbe z #{t.inspect}"
      number /= t.first
      tab << t.first
    end
    @s = tab
  end
  
  def how_many
    sum = 1
    @s.uniq.each do |v|
      sum *= (@s.select {|k| v == k}.count + 1)
    end
    sum
  end
end


p = Divisors.new(20000)

n,sum = 1,1

p.dist(sum)
while (p.how_many < 500)
  n += 1
  sum += n
  p.dist(sum)
end

puts sum