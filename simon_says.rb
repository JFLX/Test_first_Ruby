def echo(string)
	return string
end
def shout(string)
	string.upcase
end
def repeat(string, n=2)
	sentence = string
	x = n - 1
	x.times do |i|
		sentence = sentence + " " + string
	end
	return sentence
end
def start_of_word(string, n=1)
	character = string[0]
	i = 1
	while i < n
		character = character + string[i]
		i = i + 1
	end
	return character
end
def first_word(string)
	string.split[0]
end
def titleize(string)
	array = string.split
	new_array = []
	array.each_with_index do |word, index|
		if word.length > 3 or index == 0 and word != "over"
			new_array.push(word.capitalize)
		else
			new_array.push(word)
		end
	end
	new_array.join(" ")
end