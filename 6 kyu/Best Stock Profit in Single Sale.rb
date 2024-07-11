def max_profit(prices)
  min_price = prices[0]
  max_profit = prices[1] - prices[0]

  prices[1..-1].each do |price|
    profit = price - min_price
    max_profit = profit if profit > max_profit
    min_price = price if price < min_price
  end

  max_profit
end

puts max_profit([3, 10, 8, 4])