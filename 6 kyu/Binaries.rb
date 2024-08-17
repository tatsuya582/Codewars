def code(strng)
  arr = strng.chars.map do |num|
    binary_num = num.to_i.to_s(2)
    "0" * (binary_num.length - 1) + "1" + binary_num
  end
  arr.join
end

def decode(str)
  res = []
  while str.index("1")
    start = str.index("1")
    num_leng = str.slice!(0, start + 1)
    num = str.slice!(0, num_leng.length)
    res << num.to_i(2).to_s
  end
  res.join
end


# puts code("62")
puts decode("001100001100001100001110001110001110011101110111001110001110001110001111001111001111001100001100001100")