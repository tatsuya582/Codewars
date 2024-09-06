def find_outlier(integers)
  integers[0..2].count{ |n| n.odd? } > 1 ? integers.find{ |n| n.even? } : integers.find{ |n| n.odd? }
end

puts find_outlier([1,1,2])