def find_uniq(arr)
  arr.uniq.each { |num| return num if arr[0..2].count(num) <= 1 }
end

puts find_uniq([ 1, 1, 1, 2, 1, 1 ])