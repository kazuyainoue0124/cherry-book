# case文では内部的に「case節のオブジェクト === when節のオブジェクト」で判定を行う
# だからProcオブジェクトが===で呼び出せるようになっている

# Procオブジェクトとcase文を組み合わせて大人・子ども・二十歳を判断する例
def judge(age)
  # 20より大きければtrueを返すProcオブジェクト
  adult = Proc.new { |n| n > 20 }
  # 20より小さければtrueを返すProcオブジェクト
  child = Proc.new { |n| n < 20 }

  case age
  when adult
    '大人です'
  when child
    '子どもです'
  else
    'はたちです'
  end
end

puts judge(25) #=> 大人です
puts judge(18) #=> 子どもです
puts judge(20) #=> はたちです