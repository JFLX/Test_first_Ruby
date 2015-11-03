def translate(string)
	vowels = "aeiouy"
	array = string.split
	array.map! do |word|
		if vowels.include?(word[0])
		else
			while vowels.include?(word[0]) == false
				if word[0..1] == "qu"
					word = word[2..-1] + "qu"
				else
					word = word[1..-1] + word[0]
				end
			end
		end
		word = word + "ay"
	end
	array.join(" ")
end