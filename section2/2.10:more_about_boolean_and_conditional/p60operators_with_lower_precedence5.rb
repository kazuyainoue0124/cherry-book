# &&を使うと(user.valid? && send_mail_to) userと解釈されてしまう
user.valid? && send_mail_to user

# andを使うと(user.valid?) and (send_mail_to user)と解釈される
user.valid? and send_mail_to user
