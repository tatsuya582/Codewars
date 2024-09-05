def persistence(n)
  count = 0
  while n.to_s.size > 1
    n = n.to_s.split("").inject(1) { |res, num| res * num.to_i }
    count += 1
  end
  count
end

puts persistence(999)