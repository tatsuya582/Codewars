def delete_nth(order,max_e)
  hash = Hash.new(0)
  order.select do |num|
    hash[num] += 1
    hash[num] <= max_e
  end
end

puts delete_nth([1,1,3,3,7,2,2,2,2], 3)