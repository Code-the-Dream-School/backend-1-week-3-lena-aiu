#(2) Write a program called sorted_words.rb. It should prompt the user for words and add each to an array. 
#The user should be able to add as many words as they like, until they just hit enter to return a blank word. 
#Then sort the array using the sort method and print it out.

def ask(question)
  print question + " "
  gets.chomp
end

word_array = Array.new

loop do
	new_word = ask("Please enter a word: ")
	word_array << new_word
	break if new_word == "" && last_item = word_array.pop
end

#puts word_array.inspect

sort_word_array = word_array.sort
print sort_word_array