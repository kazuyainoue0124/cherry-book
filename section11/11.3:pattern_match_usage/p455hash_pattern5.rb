# hashパターンとarrayパターンを混在させることもできる
case {name: 'Alice', children: ['Bob']}
in {name:, children: [child]}
  # :nameと:childrenのキーを持ち、なおかつ:childrenの値が要素1個の配列であればマッチ
  "name=#{name}, child=#{child}"
end
#=> "name=Alice, child=Bob"