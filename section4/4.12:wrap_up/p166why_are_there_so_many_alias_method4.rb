# エイリアスメソッドが多い理由④：短く書きたいから? ／ 英語として自然に書きたいから?
# translateの短縮形としてのtメソッド
I18n.translate 'foo.bar'
I18n.t 'foo.bar'

# 単数形のdayメソッドと複数形のdaysメソッド
Date.today + 1.day
Date.today + 2.days