# 同名のメソッドが複数箇所から呼び出される例
## ①DVDクラス
## ②モジュールB
## ③モジュールA
## ④Productクラス
## ⑤Objectクラス
## ⑥Kernelモジュール
## ⑥BasicObjectクラス
module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end

class Product
  def to_s
    "<Product> #{super}"
  end
end

class DVD < Product
  include A
  include B

  def to_s
    "<DVD> #{super}"
  end
end

dvd = DVD.new
puts dvd.to_s #=> <DVD> <B> <A> <Product> #<DVD:0x00000001008dd758>

p DVD.ancestors #=> [DVD, B, A, Product, Object, Kernel, BasicObject]