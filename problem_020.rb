puts (1..100).inject(:*).to_s.split("").to_a.map(&:to_i).inject(:+)