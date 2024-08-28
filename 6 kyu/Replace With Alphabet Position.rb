def alphabet_position(text)
  text.downcase.scan(/[a-z]/).map{ |s| s.ord - 96 }.join(" ")
end

puts alphabet_position("The sunset sets at twelve o' clock.")