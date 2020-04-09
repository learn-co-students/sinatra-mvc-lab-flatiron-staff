class PigLatinizer

	attr_accessor :phrase

	def piglatinize(p)
		words = p.split(" ")
		new_words = []
		words.each do |w|
			new_words << latinize_word(w)
		end
		return new_words.join(" ")
	end



	def is_consonant(l)
		if "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ".include? l
			return true 
		else
			return false
		end
	end

	def latinize_word(word)
		i = 0 
		unless is_consonant(word[0])
			word = word + "way"
			return word
		end
		while i < word.length 
			x = word[0]
			if is_consonant(x)
				word = word[1,word.length-1] + word[0]
			else 
				word = word + 'ay'
				break
			end
			i += 1 
		end
		return word 
	end

end