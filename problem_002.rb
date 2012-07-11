fib = [1,1]
fib << fib[-1] + fib[-2] while fib[-1] + fib[-2] < 4e+6
puts fib.select(&:even?).inject(:+)