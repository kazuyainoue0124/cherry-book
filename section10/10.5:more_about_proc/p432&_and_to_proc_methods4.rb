# &:upcaseのような書き方は実はProcオブジェクトが関係
# &は右側にあるオブジェクトをProcオブジェクトに変換する役割
p ['ruby', 'java', 'python'].map { |s| s.upcase } #=> ["RUBY", "JAVA", "PYTHON"]
# &:upcaseにより:upcaseに対してto_procメソッドを呼び出し、:upcaseがProcオブジェクトに変換される
p ['ruby', 'java', 'python'].map(&:upcase)        #=> ["RUBY", "JAVA", "PYTHON"]