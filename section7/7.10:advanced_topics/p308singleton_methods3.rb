alice = 'I am Alice.'
# aliceというオブジェクトに特異メソッドを追加するもうひとつの方法
class << alice
  def shuffle
    chars.shuffle.join
  end
end
puts alice.shuffle #=> "a c.lAIm ei"