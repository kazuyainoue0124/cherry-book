# Kernelモジュールの代表的なメソッドは以下の通り
# puts  p  pp  print  require  loop
# KernelモジュールはObjectクラスでincludeされているためKernelモジュールのメソッドはどこでも使える
# Objectクラスは事実上、全クラスの頂点に位置するクラス
puts Object.include?(Kernel) #=> true