# hashパターンはin節に{}を使ってハッシュの構造パターンを指定する利用パターン
# 値に変数を指定すると、その変数に対応する値が格納される
case {name: 'Alice', age: 20}
in {name: name, age: age}
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"