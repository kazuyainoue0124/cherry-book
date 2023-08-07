# nilかもしれないオブジェクトに対して安全にメソッドを呼び出したい場合は&.演算子を使うと良い

# nil以外のオブジェクトであればa.upcaseと書いた場合と同じ結果になる
a = 'foo'
puts a&.upcase #=> "FOO"

# nilであれば、nilを返す（a.upcaseと違ってエラーにはならない）
a = nil
puts a&.upcase #=> nil