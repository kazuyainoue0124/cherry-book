# ブロックをdo/endではなく{}で書いた場合は例外処理のbeginとendを省略できない（構文エラー）
users.each { |user| 
  send_mail_to(user)
rescue => e
  puts e.full_message
}
#=> syntax error, unexpected `rescue`, expectng '}' (SyntaxError)

# この場合はbeginとendを省略せずに書く必要がある
users.each { |user|
  begin
    send_mail_to(user)
  rescue => e
    puts e.full_message
  end
}
