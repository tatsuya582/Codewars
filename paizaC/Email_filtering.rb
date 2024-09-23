# C155:メールのフィルタリング

word = gets.chomp
input_line = gets.to_i
arr = []
input_line.times do
    arr << gets.chomp
end
arr.each do |str|
    puts str.include?(word) ? "Yes" : "No"
end