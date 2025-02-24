# Alice, Bob, Carolと順に検索し、最初に見つかったユーザー（nilまたはfalse以外の値）を変数に格納する
user = find_user('Alice') || find_user('Bob') || find_user('Carol')

# 正常なユーザーであればメールを送信する（左辺が偽であればメール送信は実行されない）
user.valid? && send_email_to(user)