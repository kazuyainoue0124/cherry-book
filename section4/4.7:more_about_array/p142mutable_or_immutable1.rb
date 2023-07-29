# 要素が5つで0をデフォルト値とする配列を作成する
a = Array.new(5, 0)
pp a #=> [0, 0, 0, 0, 0]

# 1番目の要素を取得する
n = a[0]
pp n #=> 0

# 数値だと破壊的な変更（たとえば強制的に負の数に変更するなど）はできない
# pp a.negative! # negative!は架空のメソッド

# 文字列はStringクラス
# Stringクラスはミュータブルなのでブロックを使わずにデフォルト値を設定すると破壊的な変更の影響を受ける

# 以下はイミュータブルなので破壊的な変更の影響を受けない
# 数値（IntegerクラスやFloatクラス）
# シンボル（Symbolクラス）
# true / false （TrueClassクラスとFalseClassクラス）
# nil（NilClassクラス）
# 範囲（Rangeクラス）