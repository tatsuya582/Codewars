def good_vs_evil(good, evil)
  goods = [1, 2, 3, 3, 4, 10]
  evils = [1, 2, 2, 2, 3, 5, 10]
  good_point = get_point(good, goods)
  evil_point = get_point(evil, evils)

  good_win = "Battle Result: Good triumphs over Evil"
  evil_win = "Battle Result: Evil eradicates all trace of Good"
  no_victor = "Battle Result: No victor on this battle field"

  good_point > evil_point ? good_win : good_point < evil_point ? evil_win : no_victor
end

def get_point(num, points)
  res = []
  num.split(" ").map(&:to_i).each_with_index{ |n, idx| res << n * points[idx] }
  res.sum
end

puts good_vs_evil('0 0 0 0 0 10', '0 1 1 1 1 0 0')