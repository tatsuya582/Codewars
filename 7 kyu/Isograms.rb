def is_isogram(string)
  string.downcase.chars.uniq.length == string.length
end

puts is_isogram("Dermatoglyphics")