# C142:レストランのメニュー

input_line = gets.chomp
arr = gets
arr = gets.split(" ")
puts arr.include?(input_line) ? "Yes" : "No"