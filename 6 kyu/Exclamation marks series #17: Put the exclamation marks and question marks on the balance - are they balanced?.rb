def balance(left, right)
  left = get_point(left)
  right = get_point(right)
  left == right ? "Balance" : ( left > right ? "Left" : "Right" )
end

def get_point(str)
  hash = { "!" => 2, "?" => 3 }
  str.chars.sum{ |s| hash[s] }
end

puts balance("!!???!????", "??!!?!!!!!!!")