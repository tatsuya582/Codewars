def double_every_other(num_array)
  num_array.map.each_with_index { |num, idx| idx % 2 == 0 ? num : num * 2 }
end

puts double_every_other([3,-2,-43,30,0,0])