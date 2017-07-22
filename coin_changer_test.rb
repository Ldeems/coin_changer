require "minitest/autorun"
require_relative "coin_changer_method.rb"

class Coin_changer_test < Minitest::Test

	def test_6_equals_6
		assert_equal(6,6)
	end	

	def test_for_1_cent
		assert_equal({quarter: 0, dime: 0, nickel: 0, penny: 1}, coin_changer(1))
	end	

	def test_1_nickel
		assert_equal({quarter: 0, dime: 0, nickel: 1, penny: 0}, coin_changer(5))
	end	

end	