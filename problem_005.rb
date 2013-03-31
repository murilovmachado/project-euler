def getSmallestMultipleFromOneUntil(top)
	lowestMultiple = top.lcm(top - 1)
	base = lowestMultiple


	i = top - 2
	while i > 1
		if lowestMultiple % i == 0
			i -= 1
		else
			i = top - 2
			lowestMultiple += base
		end
	end

	lowestMultiple
end

answer = getSmallestMultipleFromOneUntil(20)
puts answer