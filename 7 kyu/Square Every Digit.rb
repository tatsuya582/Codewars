def square_digits num
  num.to_s.chars.map{|n| (n.to_i) ** 2 }.join.to_i
end

puts square_digits(1234321)