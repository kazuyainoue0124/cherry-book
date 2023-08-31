# クラス構文やモジュール構文の内部（構文の直下）ではselfがクラス自身やモジュール自身を指している
# ClassクラスやModuleクラスがObjectクラスを継承しており、ObjectクラスはKernelモジュールを
# includeしているためputメソッドやpメソッドが使える
class User
  p self       #=> User
  p self.class #=> Class
end

module Loggable
  p self       #=> Loggable
  p self.class #=> Module
end