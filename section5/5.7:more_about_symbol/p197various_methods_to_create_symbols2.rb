# 数字で始まったりスペースやハイフンが含まれる場合はエラー

# 以下のようにシンボルを作ろうとするとエラーになる
:12345       #=> SyntaxError
:ruby-is-fun #=> NameError
:ruby is fun #=> SyntaxError
:()          #=> SyntaxError

# ただし上記の文字列でもシングルクオートで囲むとシンボルとして有効になる
:'12345'
:'ruby-is-fun'
:'ruby is fun'
:'()'