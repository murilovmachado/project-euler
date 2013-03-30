require 'set'

def getMultiplesUntil(multiples, top, divisor)
	currentElement = multiples.last
	nextElement = currentElement + divisor

	if nextElement < top
		multiples.push nextElement
		getMultiplesUntil(multiples, top, divisor)
	end

	multiples
end

def getMutliplesOfThreeOrFiveUntil(top)
	multiplesOfThreeOrFive = Set.new
	multiplesOfThree = getMultiplesUntil([0], top, 3)
	multiplesOfFive = getMultiplesUntil([0], top, 5)
	multiplesOfThreeOrFive.merge(multiplesOfThree)
	multiplesOfThreeOrFive.merge(multiplesOfFive)
end

multiplesOfThreeOrFive = getMutliplesOfThreeOrFiveUntil(1000)
answer = multiplesOfThreeOrFive.inject(0) {|sum, i| sum + i}
puts answer