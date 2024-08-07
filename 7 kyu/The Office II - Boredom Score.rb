def boredom(staff)
  score = {
    "accounts" => 1,
    "finance" => 2,
    "canteen" => 10,
    "regulation" => 3,
    "trading" => 6,
    "change" => 6,
    "IS" => 8,
    "retail" => 5,
    "cleaning" => 4,
    "pissing about"=> 25
  }

  res = 0
  staff.keys.each do |s|
    res += score[staff[s]]
    puts score[staff[s]]
  end
  res <= 80 ? "kill me now" : res < 100 ? "i can handle this" : "party time!!"
end

puts boredom({"tim"=>"finance", "jim"=>"change", "randy"=>"cleaning", "sandy"=>"pissing about", "andy"=>"pissing about", "katie"=>"canteen", "laura"=>"canteen", "saajid"=>"retail", "alex"=>"cleaning", "john"=>"accounts", "mr"=>"IS"})