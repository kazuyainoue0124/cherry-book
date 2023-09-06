# yieldの使いどきは少ない
# 「定型的な処理があり、その一部だけユースケースに合わせて柔軟に変更したい」ケースでは有効

# 処理の開始時と終了時にログを記録する共通メソッド
# （ここでは実際にログに記録する代わりにputsで代用）
def with_logging(name)
  puts "[LOG] START: #{name}"
  ret = yield
  puts "[LOG] END: #{name}"
  ret
end

# ログ付きで数字の加算を実行する
answer = with_logging('add numbers') do
  1 + 2
end
#=> [LOG] START: add numbers
#   [LOG] END: add numbers
p answer
#=> 3

# ログ付きでmapメソッドを実行する
numbers = with_logging('Array#map') do
  [1, 2, 3].map { |n| n * 10 }
end
#=> [LOG] START: Array#map
#   [LOG] END: Array#map
p numbers #=> [10, 20, 30]