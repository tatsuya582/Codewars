def reverse_words(str)
  str.split(/(\s+)/).map{ |s| s.reverse }.join
end

puts reverse_words('double  spaced  words')