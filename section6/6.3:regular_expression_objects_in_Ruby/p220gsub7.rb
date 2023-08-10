text = '私の誕生日は1977年7月17日です。'
puts text.gsub(
       /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/,
       '\k<year>-\k<month>-\k<day>'
     )
#=> 私の誕生日は1977-7-17です。