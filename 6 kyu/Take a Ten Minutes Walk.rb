def is_valid_walk(walk)
  walk.count("n") == walk.count("s") && walk.count("w") == walk.count("e") && walk.length == 10
end

puts is_valid_walk(['n','s','n','s','n','s','n','s','n','s'])