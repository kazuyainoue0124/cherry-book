require 'minitest/autorun'

# 本来はクラス名SampleTestに合わせてファイル名はsample_test.rbとするべき
class SampleTest < Minitest::Test
  # Minitestはtest_で始まるメソッドを探して実行する
  def test_sample
    # わざとcapitalizeメソッド（最初の1文字だけ大文字にするメソッド）を呼ぶ
    assert_equal 'RUBY', 'ruby'.capitalize
  end
end