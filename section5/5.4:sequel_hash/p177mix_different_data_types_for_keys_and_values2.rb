# ハッシュのキーに異なるデータ型が混在するのは良くないが、値には異なるデータ型が混在するケースはよくある
person = {
  # 値が文字列
  name: 'Alice',
  # 値が数値
  age: 20,
  # 値が配列
  friends: ['Bob', 'Carol'],
  # 値がハッシュ
  phones: { home: '1234-0000', mobile: '5678-0000' }
}

p person[:age]             #=> 20
p person[:friends]         #=> ["Bob", "Carol"]
p person[:phones][:mobile] #=> "5678-0000"