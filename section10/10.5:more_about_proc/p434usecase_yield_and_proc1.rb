# Proc（特にラムダ）はRailsのActiveRecordのスコープ（scope）で頻出する
class Guitar < ApplicationRecord
  # scopeメソッドに2つの引数を渡している
  # 第1引数はスコープ名の:gold、第2引数がProcオブジェクトのラムダ
  scope :gold, -> { where(color: 'gold') }
end