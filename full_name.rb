#(1) Write a program which asks for a person's first name, then middle, then last. It should store each 
#of these parts in an array. Finally, it should greet the person using their full name. Call the program full_name.rb.

def ask(question)
  print question + " "
  gets.chomp
end

first_name = ask("Please enter your first name: ")
middle_name = ask("Please enter your middle name: ")
last_name = ask("Please enter your last name: ")

if first_name == "" || middle_name == "" || last_name == ""
	  puts "Enter enter all information"
	  return 
end

full_name = Array.new

full_name.unshift(first_name)
full_name << middle_name
full_name.push(last_name)

puts full_name.inspect

first_item = full_name.first
second_item = full_name[1]
third_item = full_name.last

puts "Greetings, #{first_item} #{second_item} #{third_item}!"