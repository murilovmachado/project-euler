def getLargestPalindromeFromProductOfTwoFactors(digitsFromFactors)
	maxFactor = ("9" * digitsFromFactors).to_i
	palidromes = Array.new

	# Optimization variables
	optimizingOn = false
	maxFirstFactorForPalindrome = 0

	i = maxFactor
	while i >= 1 and i > maxFirstFactorForPalindrome
		j = i
		while j >= 1
			product = i * j
			if isPalindrome product
				palidromes.push product
				if !optimizingOn
					optimizingOn = true
					maxFirstFactorForPalindrome = j
				end
				break
			end
			j -= 1
		end
		i -= 1
	end

	palidromes.max
end

def isPalindrome(number)
	result = true
	numberString = number.to_s

	for i in 0..(numberString.size / 2)
		if numberString[i] != numberString[- (i + 1)]
			result = false
		end
	end

	result
end

answer = getLargestPalindromeFromProductOfTwoFactors(3)
puts answer