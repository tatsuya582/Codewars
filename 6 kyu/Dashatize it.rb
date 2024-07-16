def dashatize(num)
  res = []
  last_num = "-"
  num = num.to_s.split("")
  num_leng = num.length
  num.each do |n|
    next if n == "-"
    if n.to_i % 2 == 0
      res << n
      last_num = n
    elsif last_num == "-"
      res << n + "-"
    else
      res << "-" + n + "-"
      last_num = "-"
    end
  end
  res[-1] = res[-1].to_i.to_s
  res.join
end

puts dashatize(86320)