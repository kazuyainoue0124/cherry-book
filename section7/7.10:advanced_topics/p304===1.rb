# 以下のコードは内部的には"when節のオブジェクト === case節のオブジェクト"の結果を評価している（左辺がwhen節のオブジェクト）
text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end
#=> 電話番号です