# メソッドの呼び出しを全部遡っても例外を捕捉する処理がどこにもなければ
# プログラム全体が異常終了する

# method_1から例外処理を削除する
def method_1
  puts 'method_1 start.'
  method_2
  puts 'method_1 end.'
end

def method_2
  puts 'method_2 start.'
  method_3
  puts 'method_2 end.'
end

def method_3
  puts 'method_3 start.'
  # ZeroDivisionError(整数を0で除算しようとした場合に発生する例外)を発生させる
  1 / 0
  puts 'method_3 end.'
end

# 処理を開始する
method_1
#=> method_1 start.
#   method_2 start.
#   method_3 start.
#   divided by 0 (ZeroDivisionError)