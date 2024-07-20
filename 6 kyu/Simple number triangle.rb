def solve(n)
  arr = [1]
  before_arr = []
  (2..n).each do |num|
    before_arr = [1]
    (2...num).each do |number|
      before_arr << before_arr[-1] + arr[number - 1]
    end
    before_arr << before_arr[-1]
    arr = before_arr
  end
  arr.sum
end

puts solve(7)