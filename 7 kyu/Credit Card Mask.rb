def maskify(cc)
  length = cc.length - 4
  return cc if length <= 0
  cc = cc.chars.reverse
  '#' * length + cc[0...4].reverse.join
end

puts maskify('4556364607935616')