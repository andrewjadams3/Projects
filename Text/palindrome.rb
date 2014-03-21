def simple_palindrome(string)
	string = string.split(' ').join.downcase!
	string == string.reverse
end

puts simple_palindrome("A but tuba")
puts simple_palindrome("Is this a palindrome?")