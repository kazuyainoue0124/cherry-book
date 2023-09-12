# in節の値の変数を省略すると、キーと同じ名前の変数に値が代入される
case {name: 'Alice', age: 20}
in {name:, age:}
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"