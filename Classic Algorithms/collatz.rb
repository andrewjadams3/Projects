def collatz(n)
	steps = 0
	while n > 1
		if n % 2 == 0
			n /= 2
		else
			n = (n * 3) + 1
		end
		steps += 1
	end
	steps
end

#Test cases
puts collatz(2) == 1
puts collatz(3) == 7
puts collatz(34) == 13
puts collatz(27) == 111