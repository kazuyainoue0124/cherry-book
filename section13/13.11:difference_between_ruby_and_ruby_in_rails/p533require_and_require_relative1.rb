# 素のRubyではrequireやrequire_relativeで他のプログラムやライブラリを読み込む
require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  # 省略