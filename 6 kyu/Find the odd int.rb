def find_it(seq)
  hash = Hash.new(0)
  seq.each{ |num| hash[num] += 1 }
  hash.select{ |key, value| value % 2 != 0 }.keys.join.to_i
end

puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])