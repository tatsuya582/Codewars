def bang_n(n,history)
  commands = history.split("\n")
  res = commands.find{ |str| str.match?(n.to_s) }
  res ? res.split(" ").drop(1).join(" ") : "!#{n}: event not found"
end
history=
" 1  cd /pub
  2  more beer
  3  lost
  4  ls 
  5  touch me 
  6  chmod 000 me 
  7  history
  8  more me"  
puts bang_n(8,history)