def odd_row(n)
  num_start = (1...n).sum * 2 + 1
  Array.new(n) { |num| num_start + num * 2 }
end

puts odd_row(13)