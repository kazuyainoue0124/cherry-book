# 名前空間付きでクラスを定義する方法は次の２通りの書き方がある（復習）
# モジュール構文とクラス構文を入れ子にして書く場合
module Baseball
  class Second
    # 省略
  end
end

# ::を使ってフラットに書く場合（入れ子なし）
class Baseball::Second
  # 省略
end