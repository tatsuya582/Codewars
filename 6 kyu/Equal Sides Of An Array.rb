def find_even_index(arr)
  arr.each_with_index do |num, idx| 
    return idx if arr[0...idx].sum == arr[idx + 1..-1].sum
  end
  -1
end

puts find_even_index([-1,-2,-3,-4,-3,-2,-1])