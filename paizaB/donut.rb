# B138:ドーナツ
input_line = gets.split.map(&:to_i)
arr = []
res = 0
input_line[0].times do |str|
    arr << gets
end

(0...input_line[0] - 2).each do |n|
    while arr[n].index("###")
        tmp = arr[n].index("###")
        res += 1if arr[n + 1][tmp..tmp + 2] == "#.#" && arr[n + 2][tmp..tmp + 2] == "###"
        arr[n][arr[n].index("###")] = "."
    end
end
    
puts res