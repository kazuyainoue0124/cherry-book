# FileUtilsモジュールは基本的なファイル操作を集めたモジュール
# ファイルのコピーや削除などを便利に実行するためのメソッドが定義されている
require 'fileutils'

# libディレクトリのhello_world.txtをhello_world.rbに移動（リネーム）する
Fileutils.mv('./lib/hello_world.txt', './lib/hello_world.rb')