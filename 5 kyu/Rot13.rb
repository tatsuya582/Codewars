def rot13(string)
  string.gsub(/[a-zA-z]/){ |s| getstring(s) }
end

def getstring(str)
  upcase_str = false
  upcase_str = true if str.ord <= 90

  res = str.downcase.ord + 13
  res -= 26 if res > 122

  upcase_str ? res.chr.upcase : res.chr
end

puts rot13("test")