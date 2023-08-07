# キーが重複した場合は最後に登場した配列の要素がハッシュの値に採用される(非推奨)
array = [[:japan, 'yen'], [:japan, '円']]
p array.to_h #=> {:japan=>"円"}