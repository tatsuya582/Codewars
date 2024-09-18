# C144:じゃんけんの結果

input_line = gets.to_i
arr = []
input_line.times do
    arr << gets.chomp
end
puts arr.count("G C") + arr.count("P G") + arr.count("C P")