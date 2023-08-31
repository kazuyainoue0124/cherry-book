# Rubyでは発生した例外自身もオブジェクト扱いのため、その例外オブジェクトのメソッドを
# 呼び出すことで発生した例外に関する情報を取得できる

begin
  1 / 0
rescue => e
  puts "エラークラス: #{e.class}"
  # messageメソッドは例外発生時のエラーメッセージを返す
  puts "エラーメッセージ: #{e.message}"
  puts "バックトレース -----"
  # backtraceメソッドはバックトレース情報(メソッドの呼び出し履歴)を返す
  puts e.backtrace
  puts "-----"
end
#=> エラークラス: ZeroDivisionError
#   エラーメッセージ: divided by 0
#   バックトレース -----
#   p372get_information_from_exception_objects1.rb:5:in `/'
#   p372get_information_from_exception_objects1.rb:5:in `<main>'
#   -----