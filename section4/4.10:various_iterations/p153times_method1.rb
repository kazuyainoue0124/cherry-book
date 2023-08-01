# 配列を使わず単純にn回処理を繰り返したい場合はIntegerクラスのtimesメソッドを使うと便利

sum = 0
# 処理を5回繰り返す。nには0, 1, 2, 3, 4が入る
5.times { |n| sum += n }
puts sum #=> 10