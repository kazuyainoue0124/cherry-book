# hashパターンはハッシュの各要素がin節で指定したパターン（キーと値、またはキーのみ）に
# 部分一致すればマッチしたと判定される
case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', gender:}
  # in節に:ageを指定していないが、:nameと:genderの条件が部分一致するので全体としてはマッチ
  "gender=#{gender}"
end
#=> "gender=female"