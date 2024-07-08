def wave(str)
  str.split("").map.each_with_index do |s, idx|
    next if s == " "
    str[0...idx] + str[idx].upcase + str[(idx + 1)..-1]
  end.compact
end

puts wave(" gap ")