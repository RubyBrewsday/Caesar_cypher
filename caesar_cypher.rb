def caesar_cypher
	puts "Please enter original message: "
	text = gets.chomp!
	puts "Please enter shift amount: "
	shift = gets.chomp!

	words_array = text.downcase.split(" ")
	shifted_words = ""
	i = 0

	while i < words_array.size
		shifted_word = ""
		shifted_word = words_array[i].each_char {|c| caesar_shift(c, shift)}
		shifted_words << shifted_word << " "
		i += 1
	end
	puts shifted_words.chomp
end

def caesar_shift(letter, shift)
	temp = ""
	j = 0
	while j < shift.to_i
		temp = letter.next
		letter = temp
		j += 1
	end
	return letter
end

caesar_cypher
