# selfは場所によって「そのクラスのインスタンス自身」を表したり「クラス自身」を表したりする

# クラス構文の直下とクラスメソッド内でのselfは「Fooクラス自身」を表す
# インスタンスメソッド内でのselfは「Fooクラスのインスタンス」を表す
class Foo
  # 注：このputsはクラス定義の読み込み時に呼び出される
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
#=> クラス構文の直下のself: Foo

Foo.bar #=> クラスメソッド内のself: Foo

foo = Foo.new
foo.baz #=> インスタンスメソッド内のself: #<Foo:0x0000000105140310>