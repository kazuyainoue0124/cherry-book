# 国ごとに通貨の単位を格納したハッシュを作成する例
{ 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 改行して書くことも可能
{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee'
}

# 配列と同様に、最後にカンマがついてもエラーにはならない
{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee',
}

# 同じキーが複数使われた場合は最後に出てきた値が使われる
{ 'japan' => 'yen', 'japan' => '円' } #=> {"japan"=>"円"}