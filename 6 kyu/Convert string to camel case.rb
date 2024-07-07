def to_camel_case(str)
  str.split(/[-_]/).map.each_with_index{ |s, idx| idx == 0 ? s : s.capitalize }.join
end

puts to_camel_case("the_stealth_warrior")