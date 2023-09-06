# Procオブジェクト内でメソッド引数やローカル変数を参照するとメソッドの実行完了後も
# データを保持し続ける
# このように生成時のコンテキスト（変数情報など）を保持している関数をクロージャ（closure, 関数閉包）という
def generate_proc(array)
  counter = 0
  # Procオブジェクトをメソッドの戻り値とする
  Proc.new do
    # ローカル変数のcounterを加算する
    counter += 10
    # メソッド引数のarrayにcounterの値を追加する
    array << counter
  end
end

values = []
sample_proc = generate_proc(values)
p values #=> []

# Procオブジェクトを実行するとgenerate_procメソッドの引数だったvaluesの中身が書き換えられる
sample_proc.call
p values #=> [10]

# generate_procメソッド内のローカル変数counterも加算され続ける
sample_proc.call
p values #=> [10, 20]