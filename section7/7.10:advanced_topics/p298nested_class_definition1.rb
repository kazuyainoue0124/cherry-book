# 入れ子になったクラス定義をする場合、「外側のクラス::内側のクラス」と書いて参照する
# クラス名の予期せぬ名前の衝突を防ぐ「名前空間（ネームスペース）」を作る際に使われることが多い
class User
  class BloodType
    attr_reader :type

    def initialize(type)
      @type = type
    end
  end
end

blood_type = User::BloodType.new('B')
puts blood_type.type #=> "B"