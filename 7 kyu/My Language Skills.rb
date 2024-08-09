def my_languages(results)
  res = []
  results.sort_by{ |key, value| -value }.each{ |key, value| res << key if value >= 60 }
  res
end

puts my_languages({"Java" => 10, "Ruby" => 80, "Python" => 65})