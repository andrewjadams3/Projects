def simple_palindrome(string)
	string = string.split(' ').join.downcase!
	string == string.reverse
end

#Test cases
puts simple_palindrome("A but tuba") == true
puts simple_palindrome("Is this a palindrome?") == false

#Does not work with punctuation. Future update?