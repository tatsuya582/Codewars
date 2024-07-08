def solution(string)
  string.gsub(/([A-Z])/, ' \1')
end

puts solution('camelCasing')