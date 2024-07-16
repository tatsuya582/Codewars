def high(x)
  str_sum = x.split(" ").map.each{ |str| str.chars.sum{ |s| s.ord - 96 } }
  x.split(" ")[str_sum.index(str_sum.max)]
end

puts high('what time are we climbing up the volcano')