require 'minitest/autorun'

# 本来はクラス名SampleTestに合わせてファイル名はsample_test.rbとするべき
class SampleTest < Minitest::Test
  # Minitestはtest_で始まるメソッドを探して実行する
  def test_sample
    # assert_equal 'RUBY', 'ruby'.upcase
    # わざとcapitalizeメソッド（最初の1文字だけ大文字にするメソッド）を呼ぶ
    # assert_equal 'RUBY', 'ruby'.capitalize
    # nilは文字列ではないので、upcaseメソッドを呼ぶことはできない
    assert_equal 'RUBY', nil.upcase
  end
end