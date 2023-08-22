# respond_to?メソッドを使えば呼び出したいメソッドをオブジェクトが持っているか否かで条件分岐させられる（非推奨）
def display_name(object)
  if object.respond_to?(:name)
    # nameメソッドが呼び出せる場合
    puts "Name is <<#{object.name}>>"
  else
    # nameメソッドが呼び出せない場合
    puts 'No name.'
  end
end