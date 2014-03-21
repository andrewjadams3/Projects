def reverse_1(string)
	string.reverse
end

def reverse_2(string)
	result = ''
	string.each_char {|x| result = x + result}
	result
end

#Test Case
test = "AbCdEfG"
puts reverse_2(test) == reverse_1(test)
