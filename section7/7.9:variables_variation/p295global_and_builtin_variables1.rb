# グローバル変数はクラスの内部・外部を問わず、どこからでも代入・参照できる
# グローバル変数の宣言と値の代入
$program_name = 'Awesome program'

# グローバル変数に依存するクラス
class Program
  def initialize(name)
    $program_name = name
  end

  def self.name
    $program_name
  end

  def name
    $program_name
  end
end

# $program_nameにはすでに名前が代入されている
puts Program.name  #=> "Awesome program"

program = Program.new('Super program')
puts program.name  #=> "Super program"

# Program.newのタイミングで$program_nameが"Super program"に変更される
puts Program.name  #=> "Super program"
puts $program_name #=> "Super program"