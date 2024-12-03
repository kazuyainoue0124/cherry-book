# キーの順番はマッチの結果には影響しない
case {name: 'Alice', age: 20}
in {age:, name:}
  # キーの順番が一致しなくてもマッチの結果には影響しない
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"