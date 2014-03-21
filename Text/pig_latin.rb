def pig_latin(word)
	word.downcase!
	vowels = ['a', 'e', 'i', 'o', 'u']
	first_letters = ''
	until vowels.include?(word[0]) #until a vowel is reached...
		break if word.length == 1 #(covers odd cases like 'by' and 'cry')
		first_letters += word[0] #add the first letter to first_letters
		word = word[1..-1] #remove that letter
	end
	word + first_letters + 'ay'
end



#Test Cases
puts pig_latin('Welcome') == 'elcomeway'
puts pig_latin('HELLO') == 'ellohay'
puts pig_latin('egg') == 'eggay'
puts pig_latin('Yellow') == 'ellowyay'
puts pig_latin('hAPPY') == 'appyhay'
puts pig_latin('glove') == 'oveglay'
puts pig_latin('cluck') == 'uckclay'
puts pig_latin('to') == 'otay'

#These cases are more about pronunciation than spelling.
puts pig_latin('my') == 'ymay'
puts pig_latin('cry') == 'ycray'

#Does not move 's' to the end of plural noun cases.
#This solely depends on your interpretation of pig latin rules.
puts pig_latin('socks') == 'ockssay' #Could also be 'ocksays'
puts pig_latin('buses') == 'usesbay' #Could also be 'usbays'
