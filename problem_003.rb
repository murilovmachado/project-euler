def getPrimeFactors(number, primeFactors)
	if number == 1
		primeFactors
	else
		currentPrimeFactor = getNextPrimeFactor(number, primeFactors.last)
		getPrimeFactors(number / currentPrimeFactor, primeFactors.push(currentPrimeFactor))	
	end
end

def getNextPrimeFactor(number, lastFactor)
	if number % lastFactor == 0 and lastFactor != 1
		lastFactor
	else
		primeFactorCandidate = lastFactor + 1
		while !(number % primeFactorCandidate == 0 and isPrime(primeFactorCandidate))
			primeFactorCandidate = primeFactorCandidate + 1
		end

		primeFactorCandidate
	end
end

def isPrime(number)
	divisor = 2

	while number % divisor != 0 and number > divisor
		divisor = divisor + 1
	end

	if divisor != number
		false
	else
		true
	end

end

primeFactors = getPrimeFactors(600851475143, [1])
answer = primeFactors.last
puts answer