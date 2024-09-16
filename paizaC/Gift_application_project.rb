# C097:プレゼント応募企画の実施

input_line = gets.split.map(&:to_i)
res = Array.new(input_line[0], "N")
res.each_with_index do |n, idx|
    num = idx + 1
    if num % input_line[1] == 0 && num % input_line[2] == 0
        res[idx] = "AB"
    elsif num % input_line[1] == 0
        res[idx] = "A"
    elsif num % input_line[2] == 0
        res[idx] = "B"
    end
end
puts res