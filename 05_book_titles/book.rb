class Book
	attr_reader :title

	def title= (new_title)
		exceptions = ['a', 'an', 'of', 'in', 'and', 'the']
		words = new_title.split(' ')

		i = 0
		words.each do |word|
			if i == 0
				words[i] = word.capitalize
			elsif !exceptions.include?(word)
				words[i] = word.capitalize
			end
			i += 1
		end
		@title = words.join(' ')
	end
end
