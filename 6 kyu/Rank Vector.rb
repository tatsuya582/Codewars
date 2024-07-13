def ranks(a)
  sort_arr = Hash.new(0)
  a.sort.reverse.each_with_index { |n, idx| sort_arr[n] = idx + 1 if sort_arr[n] == 0 }
  a.map.each{ |n| sort_arr[n] }
end

puts ranks [5,2,3,5,5,4,9,8,0]