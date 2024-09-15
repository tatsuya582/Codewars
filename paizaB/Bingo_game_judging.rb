# B145:ビンゴゲームの判定

input_line = gets.split.map(&:to_i)
column = input_line[0]
arr = []
column.times do |str|
    arr << gets.split(" ").map{|n| n.to_i == 0 ? "o" : n.to_i }
end
lottery = gets.split(" ").map(&:to_i)

def open_bingo(arr, lottery)
    lottery.each do |num|
        arr.each_with_index do |width,idx|
            if width.include?(num)
                arr[idx][width.index(num)] = "o"
                break
            end
        end
    end
end

def check_bingo(arr, column)
    count = 0
    arr.each {|a| count = check_width(a, count, column)}
    count = check_height(arr, count, column)
    count = check_diagonal(arr, count, column)
    
    count
end

def check_width(arr, count, column)
    count += 1 if arr.count("o") == column
    count
end

def check_height(arr, count, column)
    last = column - 1
    column.times do |idx|
        arr.each_with_index do |a, height|
            break if a[idx] != "o"
            
            count += 1 if height == last
        end
    end
    
    count
end

def check_diagonal(arr, count, column)
    last = column - 1
    column.times do |idx|
        break if arr[idx][idx] != "o"
        count += 1 if idx == last
    end
    width = 0
    (0..last).to_a.reverse.each do |idx|
        break if arr[width][idx] != "o"
        width += 1
        count += 1 if idx == 0
    end
    count
end


open_bingo(arr, lottery)
puts check_bingo(arr, column)