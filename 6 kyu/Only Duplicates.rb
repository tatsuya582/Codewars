def only_duplicates(str)
  hash = Hash.new(0)
  str.chars.each{ |str| hash[str] += 1 }
  not_uniq = hash.select{ |k,v| v > 1 }.keys
  uniq = str.chars - not_uniq
  (str.chars - uniq).join
end

puts only_duplicates('12314256aaeff')