def count_words(string)
	words = string.split(/\W+/).length
end

#Test cases
puts count_words("Hello, my name is Andrew!") == 5
puts count_words("One! Two? Three:Four, Five") == 5
puts count_words("There are between nine and eleven words in this sentence.") == 10