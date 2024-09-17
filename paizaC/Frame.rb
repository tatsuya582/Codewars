# C084:【キャンペーン問題】枠で囲む

input_line = gets.chomp
res = []
plus = "+" * (input_line.length + 2)
res << plus
res << "+" + input_line + "+"
res << plus
puts res