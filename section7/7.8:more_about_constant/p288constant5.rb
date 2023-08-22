# Rubyの定数定義(=を使った代入)はそれ自体が値を返す（つまり式になっている）
# そのため配列を定数で定義しつつ、その要素も同時に定数として定義できる
class TrafficLight
  # 配列COLORSを定数として定義し、その各要素も定数として同時に定義する
  COLORS = [
    GREEN = 0,
    YELLOW = 1,
    RED = 2
  ]
end

p TrafficLight::GREEN  #=> 0
p TrafficLight::YELLOW #=> 1
p TrafficLight::RED    #=> 2
p TrafficLight::COLORS #=> [0, 1, 2]