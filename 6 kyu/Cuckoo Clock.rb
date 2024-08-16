def cuckoo_clock(input_time, chimes)
  res = input_time.split(":").map(&:to_i)
  count = 0
  if res[1] > 0 && res[1] < 15
    res[1] = 15
  elsif res[1] > 15 && res[1] < 30
    res[1] = 30
  elsif res[1] > 30 && res[1] < 45
    res[1] = 45
  elsif res[1] > 45 && res[1] < 60
    res[1] = 0
    res[0] += 1
  end

  res[1] == 0 ? count += res[0] : count += 1
  res[0] -= 12 if res[0] == 13

  while count < chimes
    res[1] += 15
    if res[1] == 60
      res[1] = 0
      res[0] += 1
      res[0] = 1 if res[0] <= 13
      count += res[0]
    else
      count += 1
    end
  end

  res[0] -= 12 if res[0] > 12
  res[0] = "0" + res[0].to_s if res[0].to_s.length == 1
  res[1] = "00" if res[1] == 0
  res.join(":")
end

puts cuckoo_clock("12:48", 134)