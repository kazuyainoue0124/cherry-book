# クラスを使わずユーザのデータを作成する場合

# ユーザのデータを作成する
users = []
users << { first_name: 'Alice', last_name: 'Ruby', age: 20 }
users << { first_name: 'Bob', last_name: 'Python', age: 30 }

# 氏名を作成するメソッド
def full_name(user)
  "#{user[:first_name]} #{user[:last_name]}"
end

# ユーザのデータを表示する
users.each do |user|
  puts "氏名: #{full_name(user)}、年齢: #{user[:age]}"
end
#=> 氏名: Alice Ruby、年齢: 20
#   氏名: Bob Python、年齢: 30

# ハッシュを使うとキーをタイプミスしたり間違ったキーを指定した場合にnilが返ってくる
puts users[0][:first_name] #=> "Alice"
# ハッシュだとタイプミスしてもnilが返るだけなので不具合に気づきにくい
puts users[0][:first_mame] #=> nil

# ハッシュは新しくキーを追加したり内容を変更できたりするので「もろくて壊れやすいプログラム」になりがち
# 勝手に新しいキーを追加
users[0][:country] = 'japan'
# 勝手にfirst_nameを変更
users[0][:first_name] = 'Carol'
# ハッシュの中身が変更される
puts users[0] #=> "{:first_name=>"Carol", :last_name=>"Ruby", :age=>20, :country=>"japan"}"