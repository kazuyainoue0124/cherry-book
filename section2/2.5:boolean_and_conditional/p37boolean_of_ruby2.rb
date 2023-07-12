# nilを偽として扱うため、オブジェクトがnilかどうかで条件分岐させるケースが多い
data = find_data
if data != nil
    'データがあります'
else
    'データがありません'
end