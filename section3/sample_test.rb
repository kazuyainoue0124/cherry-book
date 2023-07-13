require 'minitest/autorun'

# 本来はクラス名SampleTestに合わせてファイル名はsample_test.rbとするべき
class SampleTest < Minitest::Test
  # Minitestはtest_で始まるメソッドを探して実行する
  def test_sample
    assert_equal 'RUBY', 'ruby'.upcase
  end
end