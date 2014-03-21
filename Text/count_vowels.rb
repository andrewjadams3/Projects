def count_vowels(string)
	vowels = ['a', 'e', 'i', 'o', 'u', 'y']
	vowel_hash = Hash.new(0)
	string.downcase.each_char do |x|
		vowel_hash[x] += 1 if vowels.include?(x)
	end
	vowel_hash.each {|x, y| puts "#{x}: #{y}"}
end

count_vowels("The quick brown fox jumped over the lazy dog.")

#Note: Results are unsorted. Future update?