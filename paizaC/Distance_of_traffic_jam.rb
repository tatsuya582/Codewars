# C115:渋滞の距離

input_line = gets.split(" ").map(&:to_i)
res = []
input_line[0].times do
    res << gets.to_i
end
puts res.select{|num| num if num <= input_line[1]}.sum