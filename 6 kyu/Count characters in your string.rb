def count_chars(s)
  s.chars.to_h{|str| [str,s.count(str)]}
end

puts count_chars("aba")