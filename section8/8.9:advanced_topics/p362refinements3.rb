# refinementsで使うモジュールの内部には複数のrefineを定義できる
module SomeModule
  refine String do
    # Stringクラスに対する変更
  end

  refine Enumerable do
    # Enumerableモジュールに対する変更
  end
end