# redoは無限ループを生む可能性があるため、やり直しの回数を制限した方が良い場面あり
foods = ['ピーマン', 'トマト', 'セロリ']
count = 0
foods.each do |food|
  print "#{food}は好きですか？ => "
  # わざと「いいえ」しか答えないようにする
  answer = 'いいえ'
  puts answer

  count += 1
  # やり直しは2回までにする
  redo if answer != 'はい' && count < 2

  # カウントをリセット
  count = 0
end

#=> ピーマンは好きですか？ => いいえ
#   ピーマンは好きですか？ => いいえ
#   トマトは好きですか？ => いいえ
#   トマトは好きですか？ => いいえ
#   セロリは好きですか？ => いいえ
#   セロリは好きですか？ => いいえ