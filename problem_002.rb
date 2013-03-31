def sumFibonacciUntil(top, oneBefore, twoBefore, sum)
	current = oneBefore + twoBefore

	if current <= top
		if current.even?
			sumFibonacciUntil(top, current, oneBefore, sum + current)
		else
			sumFibonacciUntil(top, current, oneBefore, sum)
		end
	else
		sum
	end
end

answer = sumFibonacciUntil(4000000, 2, 1, 2) # the sum already starts as 2, because we already summed the two first values
puts answer