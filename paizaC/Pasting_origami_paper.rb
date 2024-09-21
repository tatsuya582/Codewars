# C099:折り紙の貼り合わせ

input_line = gets.split(" ").map(&:to_i)
arr = [input_line[1]]
(input_line[0] - 1).times do
    arr << input_line[1] - gets.to_i
end

puts arr.sum * input_line[1]