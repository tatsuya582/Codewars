def order(words)
  words.split(' ').sort_by{ |s| s.chars.sort }.join(' ')
end

puts order("4of Fo1r pe6ople g3ood th5e the2")