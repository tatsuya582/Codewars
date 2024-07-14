class EvenOrOdd
  def self.call(num)
    num.even? ? "Even" : "Odd"
  end

  def self.[](num)
    self.call(num)
  end
end

def EvenOrOdd(num)
  EvenOrOdd.call(num)
end

puts even_or_odd[3]