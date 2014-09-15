# Fizzbuzz
# Author: Phillip Wilt

def fizzbuzz(n)
	s = ''
	s += 'Fizz' if n % 3 == 0
	s += 'Buzz' if n % 5 == 0

	return (s.length > 0 ? s : n)
end

#Tests
puts fizzbuzz(0)
puts fizzbuzz(3)
puts fizzbuzz(5)
puts fizzbuzz(7)
puts fizzbuzz(15)
