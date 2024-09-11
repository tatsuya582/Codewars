def to_underscore(string)
  res = string.to_s.gsub(/[A-Z]/){ |s| "_#{s.downcase}"}
  res[0] == "_" ? res[1...] : res
end

puts to_underscore("TestController")