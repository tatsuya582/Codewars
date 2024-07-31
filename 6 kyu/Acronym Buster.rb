def acronym_buster(message)
  hash = {
    'KPI' => "key performance indicators",
    'EOD' => "the end of the day",
    'TBD' => "to be decided",
    'WAH' => "work at home",
    'IAM' => "in a meeting",
    'OOO' => "out of office",
    'NRN' => "no reply necessary",
    'CTA' => "call to action",
    'SWOT' => "strengths, weaknesses, opportunities and threats"
  }
  error_message = nil

  hash.each do |key, value|
    message.gsub!(/\b#{key}\b/, value)
  end

  message.split(" ").each do |str|
    str.gsub!(".", "")
    if str.match?(/^[A-Z]{3,}$/)
       error_message = "#{str} is an acronym. I do not like acronyms. Please remove them from your email."
       break
    end
  end

  message[0] = message[0].upcase
  error_message ? error_message : message.gsub(/\. (\w)/) { |match| ". " + $1.upcase }
end

puts acronym_buster("BRB I need to go into a KPI meeting before EOD")