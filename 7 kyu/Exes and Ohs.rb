def XO(str)
  str.downcase!
  str.count('x') == str.count('o')
end

puts XO('xo0')