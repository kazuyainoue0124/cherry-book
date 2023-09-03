# do/endブロックの中身全体が例外処理で囲まれている場合もbeginとendを省略できる

# 元のコード（begin/endを省略しない）
users.each do |user|
  begin
    send_mail_to(user)
  rescue => e
    puts e.full_message
  end
end

# begin/endを省略したコード
users.each do |user|
  send_mail_to(user)
rescue => e
  puts e.full_message
end