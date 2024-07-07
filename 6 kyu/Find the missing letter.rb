def find_missing_letter(arr)
  num = arr[0].ord
  arr.map(&:ord).each do |str|
    return num.chr if str != num
    num += 1
  end
end

puts find_missing_letter(["O","Q","R","S"])