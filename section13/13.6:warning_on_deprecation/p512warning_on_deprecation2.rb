# プログラム内でWarning[:deprecated]にtrueまたはfalseをセットして警告の表示・非表示を切り替える

# 非推奨警告を出力するようtrueをセット
Warning[:deprecated] = true

# 非推奨機能を使うと警告が出力される
lambda(&proc{})
#=> warning: lambda without a literal block is deprecated; use the proc without lambda instead