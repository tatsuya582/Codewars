def digital_root(n)
  while n.to_s.size > 1
    n = n.to_s.split("").sum(&:to_i)
  end
  n
end

puts digital_root(16)