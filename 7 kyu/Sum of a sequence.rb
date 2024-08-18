def sequence_sum(begin_number, end_number, step)
  res = []
  while begin_number <= end_number
    res << begin_number
    begin_number += step
  end
  res.sum
end

puts sequence_sum(2, 6, 2)