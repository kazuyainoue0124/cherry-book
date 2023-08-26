# Rubyでは全てがオブジェクトのためStringクラスのようなクラスや、Kernelモジュールのようなモジュールも全てオブジェクト
# クラスはClassクラスのインスタンスでありモジュールはModuleクラスのインスタンス
# ClassクラスもModuleクラスもObjectクラスを継承している

class User
end

# Userクラス自身のクラスはClassクラス
puts User.class #=> Class

# ClassクラスのスーパークラスはModuleクラス
puts Class.superclass #=> Module

module Loggable
end

# Loggableモジュール自身のクラスはModuleクラス
puts Loggable.class #=> Module

# ModuleクラスのスーパークラスはObjectクラス
puts Module.superclass #=> Object