#write your code here

def echo(para)
	return para
end


def shout(string)
	return string.upcase
end


def repeat(string, i = 2)
	result = ""
	while i > 0
		result += string
		i -= 1
		if i > 0
			result += " "
		end
	end
	return result
end


def start_of_word(string, i)
	return string[0..i-1]
end


def first_word(string)
	words = string.split(" ")
	return words[0]
end


def titleize(string)
	words = string.split(" ")
	i = 0
	words.each do |word|
		if word == "and" || word == "over" || (word == "the" && i > 0)
			i += 1 
			next
		end
		words[i] = word.capitalize
		i += 1
	end
	return words.join(" ")
end