def printer_error(s)
	error = s.chars.count{ |s| s.ord > 109 }
  error.to_s + "/" + s.length.to_s
end

s="aaaaaaaaaaaaaaaabbbbbbbbbbbbbbbbbbmmmmmmmmmmmmmmmmmmmxyz"
puts printer_error(s)