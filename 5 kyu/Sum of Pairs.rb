# def sum_pairs(ints, s)
#   min = ints.length
#   res = []

#   ints.each_with_index do |num, idx|
#     right_num = idx + 1
#     while right_num < min
#       if num + ints[right_num] == s && min > right_num
#         res = [num, ints[right_num]]
#         min = right_num
#       end
#       right_num += 1
#     end
#   end
#   res != [] ? res : nil
# end

def sum_pairs(ints, s)
  hash = {}
  ints.each do |num|
    left_num = s - num
    return [left_num, num] if hash[left_num]
    hash[num] = true
  end
  nil
end

puts sum_pairs([1, 4, 8, 7, 3, 15], 8)
# puts sum_pairs([20, -13, 40], -7)