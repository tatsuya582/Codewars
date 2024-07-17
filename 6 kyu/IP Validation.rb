def is_valid_ip(ip)
  regex = /\A(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\z/
  ip.split('.').all? {|str| str.match?(regex)} && ip.split('.').size == 4
end

puts is_valid_ip('202.180.-31.75')