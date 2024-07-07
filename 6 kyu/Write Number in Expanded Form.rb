def expanded_form(num)
  res = []
  num.to_s.chars.reverse.each_with_index do |n, idx|
    next if n == '0'
    res << n + '0' * idx
  end
  res.reverse.join(' + ')
end

puts expanded_form(70304)