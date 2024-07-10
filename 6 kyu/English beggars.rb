def beggars(values, n)
  (0...n).to_a.map.each do |num|
    count = 0
    while num < values.size
      count += values[num]
      num += n
    end
    count
  end
end

puts beggars([1,2,3,4,5],3)
puts beggars([1,2,3,4,5],0)