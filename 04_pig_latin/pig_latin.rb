def translate(string)
	consonants = ['b', 'c', 'd', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'v', 'w', 'x', 'y', 'z']
	vowels = ['a', 'e', 'i', 'o', 'u']

	words = string.split(' ')

	j = 0
	words.each do |word|
		i = 0
		consonant = true
		while consonant == true do
			if word[i] == 'u' && word[i-1] == 'q'
				i += 1
				next
			end
			if vowels.include?(word[i])
				if i == 0
					words[j] = word + 'ay'
					consonant = false
				elsif
					newWord = word[i..-1]
					newWord += word[0..i-1] + 'ay'
					words[j] = newWord
					consonant = false
					puts newWord + '<---NEW WORD'
				end
			end
			i += 1
		end
		j += 1
	end
	return words.join(" ")
end
