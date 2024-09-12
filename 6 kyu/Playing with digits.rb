def dig_pow(n, p)
  total = 0
  n.to_s.split("").each do |n|
    total += n.to_i ** p
    p += 1
  end
  total % n == 0 ? total / n : -1
end

puts dig_pow(46288, 3)