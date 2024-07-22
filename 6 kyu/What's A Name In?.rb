def name_in_str(str, name)
  name_chars = name.downcase.reverse.chars
  str.downcase.chars.each { |s| name_chars.pop if s == name_chars[-1] }
  name_chars.empty?
end

puts name_in_str("thomas","Thomas")