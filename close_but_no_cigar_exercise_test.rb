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

	def test_lottery1
		my_ticket = "1234568"
        winning_array = ["1234568", "7777777", "8888888"]
        winner = off_by_one_array(my_ticket, winning_array)
        assert_equal(["1234568"], winner)
	end

	def test_lottery2
		my_ticket = "1235673612"
        winning_array = ["1235673612", "1920375812", "8888888372"]
        winner = off_by_one_array(my_ticket, winning_array)
        assert_equal(["1235673612"], winner)
	end

	def test_lottery3
		my_ticket = "777777777"
        winning_array = ["123456891", "777777777", "888888881"]
        winner = off_by_one_array(my_ticket, winning_array)
        assert_equal(["777777777"], winner)
	end

	def test_lottery4
		my_ticket = "1234568"
        winning_array = ["1234568", "7777777", "8888888"]
        winner = off_by_one_array(my_ticket, winning_array)
        assert_equal(["1234568"], winner)
	end
end