# 下記の書き方も悪くはない
data = find_data
if data != nil
    'データがあります'
else
    'データがありません'
end

# nilを偽として扱うため、オブジェクトがnilかどうかで条件分岐させるケースが多い.
# こっちの方がシンプル
data = find_data
if data
    'データがあります'
else
    'データがありません'
end