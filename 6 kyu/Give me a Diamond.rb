def diamond(n)
  return nil if n.even?
  diamonds = []
  (1..n).each do |i|
    next if i % 2 == 0
    spaces = ' ' * ((n - i) / 2)
    diamonds << spaces + ('*' * i)
  end
  (diamonds + diamonds.reverse.drop(1)).join("\\n") + "\\n"
end

puts diamond(3)