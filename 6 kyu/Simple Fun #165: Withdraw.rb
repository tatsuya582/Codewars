def withdraw(n)
  hash = { 100 => 0, 50 => 0, 20 => 0 }
  if n % 50 / 10 % 2 != 0
    hash[20] += 3
    n -= 20 * 3
  end
  tmp_100 = n / 100
  tmp_50 = (n - tmp_100 * 100) / 50
  tmp_20 = (n - tmp_100 * 100 - tmp_50 * 50) /20
  hash[100] += tmp_100
  hash[50] += tmp_50
  hash[20] += tmp_20
  hash.values
end

puts withdraw(230)