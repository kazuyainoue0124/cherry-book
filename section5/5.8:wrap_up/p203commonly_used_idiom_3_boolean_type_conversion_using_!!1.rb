# user_exists?メソッドが確実にtrue/falseだけを返すようにしたい
def user_exists?
  # データベースなどからユーザを探す（なければnil）
  user = find_user
  if user
    # userが見つかったのでtrue
    true
  else
    # userが見つからないのでfalse
    false
  end
end

# ↑のコードは次のように書ける
# !は論理否定の演算子、２つ重ねると値がtrue/falseで正しく返せる
# 「裏の裏は表」みたいな感覚
def user_exists?
  !!find_user
end