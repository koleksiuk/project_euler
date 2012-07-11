require 'mathn'
class Prime
  def each
    @primes.each do |i|
      yield i
    end
    loop do
      yield succ
    end
  end
end
class Integer
  @@ps = Prime.new
  def prime_division_cache
    value = self
    pv = []
    for prime in @@ps
      count = 0
      while (value1, mod = value.divmod(prime)
             mod) == 0
        value = value1
        count += 1
      end
      if count != 0
        pv.push [prime, count]
      end
      break if prime * prime  >= value
    end
    if value > 1
      pv.push [value, 1]
    end
    return pv
  end

  def divisors
    pd = prime_division_cache
    size = 1
    if pd.size == 1
      size += pd[0][1]
    elsif pd.size > 1
      size = pd.inject(1) do |r,i|
	r*(i[1]+1)
      end
    end
    size
  end
end

i,acc = 2,1
p Time.now
while acc.divisors < 500
  acc+=i
  i+=1
end
p Time.now
puts "answer #{acc}"