# Ruby3.0以上ならメソッド定義とprotectedを1行でできる
class User
  attr_reader :name
  # weightメソッドの定義と同時にprotectedメソッドにする（Ruby3.0以上なら有効）
  protected attr_reader :weight
  
  # 省略
end