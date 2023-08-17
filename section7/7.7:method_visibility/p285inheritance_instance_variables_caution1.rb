# スーパークラスと同じ名前のインスタンス変数をサブクラスで定義すると思わぬ不具合の原因となりうる
class Parent
  def initialize
    @first = 1
    @second = 2
    @third = 3
  end

  # 毎回"1.2.3"という文字列が返るはず（？）
  def number
    "#{@first}.#{@second}.#{@third}"
  end
end

class Child < Parent
  def initialize
    super
    @hour = 6
    @minute = 30
    # 偶然スーパークラスと同じ名前のインスタンス変数を使ってしまった！
    @second = 59
  end

  def time
    "#{@hour}.#{@minute}.#{@second}"
  end
end

parent = Parent.new
puts parent.number #=> "1.2.3"

child = Child.new
puts child.time    #=> "6.30.59"

# @secondが上書きされているので、意図しない挙動になってしまった！
puts child.number  #=> "1.59.3"