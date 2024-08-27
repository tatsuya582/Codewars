def pangram?(string)
  res = ("a".."z").to_a
  string.split("").each { |s| res.delete(s.downcase) }
  res.length == 0
end

puts pangram?("The quick brown fox jumps over the lazy dog.")