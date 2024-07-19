def twos_difference(lst)
  lst.sort.each_with_object([]) { |n,arr| arr << [n, n + 2] if lst.any?(n + 2)}
end

puts twos_difference([4, 1, 2, 3])