# キャプチャを使うと第2引数で何番目のキャプチャを取得するか指定できる
text = '私の誕生日は1977年7月17日です。'

# 第2引数がないとマッチした部分全体が返る
p text[/(\d+)年(\d+)月(\d+)日/] #=> "1977年7月17日"

# 第2引数を指定して3番目のキャプチャを取得する
p text[/(\d+)年(\d+)月(\d+)日/, 3] #=> "17"
