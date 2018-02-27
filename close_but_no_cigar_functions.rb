def off_by_one(num1, num2)
	matches = 0
	for x in (0...num1.length)
		if	num1[x] == num2[x]
			matches += 1
		end
	end
	matches
end

def off_by_one_array(my_ticket, winning_array)

	matches = []
	winning_array.each do |element|
		if off_by_one(my_ticket, element) == 3
		matches.push(element)
		end
	end
	matches
end