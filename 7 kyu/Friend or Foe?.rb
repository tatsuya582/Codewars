def friend(friends)
  friends.each_with_object([]){ |str, arr| arr << str if str.length == 4 }
end

puts friend(["Ryan", "Kieran", "Mark"])