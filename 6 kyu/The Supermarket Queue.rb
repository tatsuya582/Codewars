def queue_time(customers, n)
  cashiers = Array.new(n, 0)

  customers.each { |time| cashiers[cashiers.index(cashiers.min)] += time }

  cashiers.max
end
puts queue_time([2,2,3,3,4,4], 2)