def narcissistic?(value)
  arr = value.to_s.chars
  sum_num = arr.map{ |num| num.to_i ** arr.length }.sum
  value == sum_num
end

puts narcissistic?(153)