def autocomplete(input, dictionary)
  s = input.downcase.gsub(/[^a-zA-Z]/, '')
  res = dictionary.select{ |str| str.downcase.start_with?(s) }
  res.length < 5 ? res : res[0...5]
end



dictionary=[ 'Abnormal',
  'arm-wrestling',
  'absolute',
  'airplane',
  'airport',
  'amazing',
  'apple',
  'ball' ]

puts autocomplete('a', dictionary)
['abnormal','arm-wrestling','absolute','airplane','airport']