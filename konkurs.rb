Array.class_eval do
  def rotate(n=1)
    return self.dup if length == 1
    return []       if empty?

    ary = self.dup
    idx = n % ary.size

    ary[idx..-1].concat ary[0...idx]
  end
end

line = gets # "1 2 3 4 5 6 7 8 9 10 11 12"
array = line.split(' ').collect{|n| n.to_i}

def circle(array)
  if array.length == 1
    array
  else
    array.delete_at(0)
    circle(array.rotate(2))
  end
end

puts circle(array.rotate(2))[0] #=> [2]