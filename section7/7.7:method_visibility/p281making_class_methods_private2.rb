class User
  class << self
    # class << selfの構文ならクラスメソッドでもprivateが機能する
    private

    def hello
      'Hello!'
    end
  end
end
puts User.hello #=> "private method `hello' called for User:Class (NoMethodError)"