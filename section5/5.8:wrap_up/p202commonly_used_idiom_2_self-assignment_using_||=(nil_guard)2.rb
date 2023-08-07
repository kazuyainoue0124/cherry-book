# デフォルト値を求める処理が1行で終わらない場合は||=に続けてbegin/endで囲む方法もある
limit = nil
limit ||= begin
  a = 10
  b = 20
  a + b
end
puts limit #=> 30