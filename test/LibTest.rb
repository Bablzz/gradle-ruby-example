require 'minitest/autorun'
require './lib/Lib'

class TestLibs < Minitest::Test
  def test_sum
	  assert(sum(4,2) == 6)
  end
end