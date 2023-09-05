require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    # とりあえずモジュールが参照できることを確認する
    assert Effects
  end
end