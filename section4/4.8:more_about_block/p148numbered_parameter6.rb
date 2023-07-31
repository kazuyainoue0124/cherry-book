# 従来のブロックパラメータ |s|と、番号指定パラメータ _1 が混在すると構文エラー
['1', '20', '300'].map { |s| _1.rjust(3, '0') }
#=> ordinary parameter is defined (SyntaxError)