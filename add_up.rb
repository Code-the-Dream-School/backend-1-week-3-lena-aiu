#(3) Write a program with a function add_up(i) . It is to be passed a positive integer, and it will add all 
#the numbers from 1 to that integer and return the sum. Call the function three times within the program, 
#and each time print out the return value. Call the program add_up.rb.

def ask(question)
  print question + " "
  gets.chomp
end

word_array = Array.new

x = 0

while true do
	new_word = ask("Please enter a positive integer: ")	
	new_word = new_word.to_i
	word_array << new_word
	x += 1
	break if x > 2
end
	
word_array.each do |num|
  num += 1
   puts "adding 1 to the integer is #{num}."
 end