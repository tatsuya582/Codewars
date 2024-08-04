# A078:十字パズル
input_line = gets.to_i
puzzle = []
delete_num = []
input_line.times do
    puzzle << gets.split("")
end

def line_search(puzzle)
    res = []
    last = puzzle.size - 1
    puzzle.each_with_index do |arr, index|
        arr.each_with_index do |num, idx|
            next if num == "."
            if index == 0 && idx == 0
                res << [index, idx, false, true, true, false] if num == arr[idx + 1] && num == puzzle[index + 1][idx]
            elsif index == 0 && idx == 4
                res << [index, idx, false, false, true, true] if num == arr[idx - 1] && num == puzzle[index + 1][idx]
            elsif index == 0
                res << [index, idx, false, true, true, true] if num == arr[idx + 1] && arr[idx - 1] && num == puzzle[index + 1][idx]
            elsif index == last && idx == 0
                res << [index, idx, true, true, false, false] if num == arr[idx + 1] && num == puzzle[index - 1][idx]
            elsif index == last && idx == 4
                res << [index, idx, true, false, false, true] if num == arr[idx - 1] && num == puzzle[index - 1][idx]
            elsif index == last
                res << [index, idx, true, true, false, true] if num == arr[idx + 1] && num == arr[idx - 1] && num == puzzle[index - 1][idx]
            elsif idx == 0
                res << [index, idx, true, true, true, false] if num == arr[idx + 1] && num == puzzle[index + 1][idx] && num == puzzle[index - 1][idx]
            elsif idx == 4
                res << [index, idx, true, false, true, true] if num == arr[idx - 1] && num == puzzle[index + 1][idx] && num == puzzle[index - 1][idx]
            else
                res << [index, idx, true, true, true, true] if num == arr[idx + 1] && num == arr[idx - 1] && num == puzzle[index + 1][idx] && num == puzzle[index - 1][idx]
            end
        end
    end
    res
end

def delete_number(arr, num)
    res = arr
    num.each do |n|
        res[n[0]][n[1]] = "."
        res[n[0] - 1][n[1]] = "." if n[2]
        res[n[0]][n[1] + 1] = "." if n[3]
        res[n[0] + 1][n[1]] = "." if n[4]
        res[n[0]][n[1] - 1] = "." if n[5]
    end
    res
end

def down_number(puzzle)
    res = puzzle
    last = puzzle.size - 1
    puzzle.each_with_index do |arr, index|
        arr.each_with_index do |num, idx|
            next if num == "."
            break if index == last
            if res[index + 1][idx] == "."
                res[index + 1][idx] = num
                res[index][idx] = "."
            end
        end
    end
    res
end

while line_search(puzzle).any?
    delete_num = line_search(puzzle)
    puzzle = delete_number(puzzle, delete_num)
    input_line.times do
        puzzle = down_number(puzzle)
    end
end

puts puzzle.map(&:join)