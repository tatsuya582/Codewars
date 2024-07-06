def unique_in_order(iterable)
  res = []
  iterable = iterable.chars if iterable.class == String
  iterable.each_with_index{ |s,idx| res << s if iterable[idx - 1] != s || idx == 0 }
  res
end

puts unique_in_order('A')