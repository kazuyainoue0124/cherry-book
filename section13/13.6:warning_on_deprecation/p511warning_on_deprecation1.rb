# Rubyはバージョンアップしたタイミングで一部の機能を非推奨とすることがある
# 非推奨機能は将来的にRubyから削除されるため早く修正する必要がある
# Ruby2.7.2以降は非推奨機能を使った場合でもオプションを付けないと警告が出ない

# Ruby2.7.2以降では警告対象だが、そのままでは警告が出ない
lambda(&proc{})

# -W:deprecatedオプションを付けてrubyコマンドやirbを実行すると警告が出力される
lambda(&proc{})
#=> warning: lambda without a literal block is deprecated; use the proc without lambda instead