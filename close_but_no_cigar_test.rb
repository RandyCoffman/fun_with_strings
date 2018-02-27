require "minitest/autorun"
require_relative "close_but_no_cigar_functions.rb"

class Close_but_no_cigar < Minitest::Test
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

	def test_2468_numbers
		num1 = "2459"
		num2 = "2468"
		number = off_by_one(num1, num2)
		assert_equal(2, number)
	end

	def test_1842_numbers
		num1 = "1432"
		num2 = "1842"
		number = off_by_one(num1, num2)
		assert_equal(2, number)
	end	

	def test_1111
		num1 = "1111"
		num2 = "2222"
		number = off_by_one(num1, num2)
		assert_equal(0, number)
	end

	def test_3333
		num1 = "3918"
		num2 = "3333"
		number = off_by_one(num1, num2)
		assert_equal(1, number)
	end

	def test_1234
		num1 = "1324"
		num2 = "1234"
		number = off_by_one(num1, num2)
		assert_equal(2, number)
	end

	def test_winning_returns
		my_ticket = "1234"
        winning_array = ["1234", "1235"]
        number = off_by_one_array(my_ticket, winning_array)
        assert_equal(["1235"], number)
	end

	def test_winning_returns_2
		my_ticket = "1234"
        winning_array = ["5447", "1235", "7998"]
        number = off_by_one_array(my_ticket, winning_array)
        assert_equal(["1235"], number)
	end

end