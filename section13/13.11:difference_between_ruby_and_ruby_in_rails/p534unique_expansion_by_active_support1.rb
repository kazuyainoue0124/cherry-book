# RubyではStringクラスやArrayクラスのような組み込みライブラリであっても開発者が自由に拡張できる
# Railsではこの特徴を積極的に活用し、Rubyの標準ライブラリに対して数多くの独自拡張を実装している

# Rails環境であれば、文字列に対してunderscoreメソッドが呼び出せる
'HelloWorld'.underscore #=> "hello_world"

# 素のRubyではunderscoreメソッドは定義されていない
'HelloWorld'.underscore
#=> undefined method `underscore` for "HelloWorld":String (NoMethodError)