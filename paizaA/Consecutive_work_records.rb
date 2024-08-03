# A066:連勤記録
work_count = gets.to_i
works = []
res = 0
tmp = 0
work_count.times do |str|
    works << gets.split(" ").map(&:to_i)
end

chars_days = works.flatten
max_day = chars_days.max - chars_days.min + 2
work_days = Array.new(max_day, false)

works.each do |day|
    (day[0]..day[1]).each{ |d| work_days[d] = true }
end

work_days.each do |day|
    if day
        tmp += 1
    else
        tmp = 0
    end
    res = tmp if res < tmp
end
    
        
puts res