def is_alt(s)
  start = s.index(/[aiueo]/)
  s.split("").each_with_index do |str, idx|
    if idx == start
      return false if !str.match?(/[aiueo]/)
      start += 2
    end
  end
  true
end

puts is_alt("amazon")