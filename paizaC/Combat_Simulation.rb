# C148:戦闘シミュレーション

input_line = gets.split(" ").map(&:to_i)
level = input_line[1]
arr = []
input_line[0].times do
    arr << gets.to_i
end

arr.each do |num|
    next if level == num
    if level > num
        level += num /2
    else
        level /= 2
    end
end

puts level