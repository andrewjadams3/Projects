def reverse(string)
	string.reverse
end

puts "Enter some text to be reversed:"
input = gets.chomp
puts reverse(input)