# Pathnameクラスはパス名をオブジェクト指向らしく扱うクラス
# 自分自身がファイルかどうかを返すメソッドや、新しいパス文字列を組み立てるメソッドなどが定義されている
require 'pathname'

# カレントディレクトリ配下にあるlibディレクトリを表すオブジェクトを作る
lib = Pathname.new('./lib')

# ファイルか？
lib.file? #=> false

# ディレクトリか？
lib.directory? #=> true

# libディレクトリ配下にあるsample.txtへのパス文字列を作る
# （区切り文字のスラッシュは自動的に付与される）
lib.join('sample.txt').to_s #=> "./lib/sample.txt"