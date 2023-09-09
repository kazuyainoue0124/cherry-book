# case文と同じくvalueパターンでもin節に範囲オブジェクトやクラス名を書いても機能する
# valueパターンでも"in節のオブジェクト === case節のオブジェクト"の結果を評価している
value = 'abc'

result = case value
         in Integer
           '整数です'
         in String
           # String === "abc"が真なのでここにマッチ
           '文字列です'
         end
puts result #=> 文字列です