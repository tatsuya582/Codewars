def sort_array(source_array)
  odd_num = []
  res = source_array.map do |n|
    odd_num << n if n.odd?
    n.odd? ? false : n
  end
  odd_num.sort!
  res.map { |n| n ? n : odd_num.delete_at(0) }
end

puts sort_array([2, 22, 37, 11, 4, 1, 5, 0])