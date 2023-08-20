# case文ではwhen節にクラス名を書いてオブジェクトのデータ型を判定できる
# Stringクラス,ArrayクラスもClassクラスのインスタンスでありClassクラスが===を再定義しているから
value = [1, 2, 3]

# 内部的には String === value, Array === value, Hash === valueの結果が評価されている
case value
when String
  puts '文字列です'
when Array
  puts '配列です'
when Hash
  puts 'ハッシュです'
end
#=> 配列です