# 論理演算子の||は式全体の真偽値が確定した時点で時点で式の評価を終了し、その時点の戻り値を返す
limit = nil
# limitがnilまたはfalseであれば10を代入する（それ以外はlimitの値をそのまま使う）
limit ||= 10
puts limit #=> 10

limit = 20
# limitがnilまたはfalseであれば10を代入する（それ以外はlimitの値をそのまま使う）
limit ||= 10
puts limit #=> 20