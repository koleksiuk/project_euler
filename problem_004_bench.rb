
require "benchmark"
include Benchmark

n = 1000000
bm(12) do |test|
  test.report("normal:")    do
    a,b = Array.new, Array.new
    (110..999).step(11) do |n|
      a.unshift(n)
    end

    a.each do |n|
      999.downto(n) do |m|
        num = n*m
        b << num if num.to_s == num.to_s.reverse
      end
    end
  end
end