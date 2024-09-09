def towerBuilder(n_floors)
  space = n_floors - 1
  block = 0
  res = []
  while 0 <= space
    res << " " * space + "*" * block + "*" + "*" * block + " " * space
    space -= 1
    block += 1
  end
  res
end

puts towerBuilder(3)