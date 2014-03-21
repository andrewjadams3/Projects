def simple_palindrome(string)
	letters = string.split(/\W+/).join.downcase
	letters == letters.reverse
end

#Test cases
puts simple_palindrome("A but tuba.") == true
puts simple_palindrome("Is this a palindrome?") == false
puts simple_palindrome("A man, a plan, a canal: panama.") == true
puts simple_palindrome("\"Rum… rum…\" I murmur.") == true