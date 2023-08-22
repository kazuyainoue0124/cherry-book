# クラスメソッドも実質的には特定クラスの特異メソッドである
# クラスメソッドを定義するコード例
class User
  def self.hello
    'Hello'
  end

  class << self
    def hi
      'Hi.'
    end
  end
end

# 特異メソッドを定義するコード例
alice = 'I am alice.'

def alice.hello
  'Hello.'
end

class << alice
  def hi
    'Hi.'
  end
end