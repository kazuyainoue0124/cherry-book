# Railsは名前空間として使われているモジュールを自動的に作成する

# 素のRubyであればクラスやモジュールとして事前にFooを定義しておく必要がある
# RailsではFooの下にbar.rbがあることから「Fooは名前空間である」と判断しFooというモジュールを内部的に自動で定義する
class Foo::Bar < ApplicationRecord
  # クラスの定義
end