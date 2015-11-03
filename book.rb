class Book
	def title=(string)
		book_title = []
		string.split.each_with_index do |words, index|
			if index == 0 or words.length > 3 or words == "i"
				book_title.push(words.capitalize)
			elsif words.length == 3 and (words != "the" and words != "and")
				book_title.push(words.capitalize)
			else
				book_title.push(words)
			end
		end
		@title = book_title.join(" ")
	end
	def title
		@title
	end
end