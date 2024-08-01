def permutations(string)
  string.chars.permutation.map(&:join).uniq
end

puts permutations('aabb')