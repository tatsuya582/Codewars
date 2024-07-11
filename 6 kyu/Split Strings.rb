def solution(str)
  res = []
  str += "_" if str.length % 2 != 0
  str.chars.each_with_index do |s, idx|
    next if idx % 2 != 0
    res << s + str[idx + 1] 
  end
  res
end

puts solution("abcdefg")