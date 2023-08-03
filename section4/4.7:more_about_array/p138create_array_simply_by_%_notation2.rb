# 値にスペースを含めたい場合はバックスラッシュでエスケープする
pp %w(big\ apple small\ melon orange) #=> ["big apple", "small melon", "orange"]