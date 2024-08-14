def frame(score)
  left = 0
  right = 0
  score.gsub(/\([^)]*\)/, '').split(";").each do |num|
    point = num.split("-").map(&:to_i)
    point[0] > point[1] ? left += 1 : right += 1
  end
  [left, right]
end
score = "24-79(72); 16-101(53); 86(58)-27; 31-90(74); 0-115(115); 67-40; 61-21; 81(55)-23; 51-14; 124(56,68)-4; 67-12; 108(85)-15; 1-117(117)"
puts frame(score)