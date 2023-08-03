# until文は条件式が偽である間、処理を繰り返す
# 使い方はwhile文と同じ
a = [10, 20, 30, 40, 50]
until a.size <= 3
  a.delete_at(-1)
end
p a #=> [10, 20, 30]