require "minitest/autorun"
require_relative "close_but_no_cigar_exercise_functions.rb"

class Close_but_no_cigar_exercise < Minitest::Test
	def test_boolean		#This is made to pass so I can establish a base
		assert_equal(true,true)
	end

	def test_1_matches_1
		num1 = "1"
		num2 = "1"
		number = off_by_one(num1, num2)
		assert_equal(1, number)
	end

	def test_1234_matches_1234
		num1 = "1234"
		num2 = "1234"
		number = off_by_one(num1, num2)
		assert_equal(4, number)
	end

	def test_12345_matches_12345
		num1 = "12345"
		num2 = "12345"
		number = off_by_one(num1, num2)
		assert_equal(5, number)
	end
end