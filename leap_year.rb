#(4) Write a program, leap_year.rb. It will ask the user for a starting year and an ending year, and it 
#will then print out all the leap years between them, including the starting or ending year if those are 
#leap years. The rules for leap years are: A leap year is divisible by 4, except for years that are divisible 
#by 100 -- those aren't leap years -- except for years that are divisible by 400, which ARE leap years.

def ask(question)
  print question + " "
  gets.chomp.to_i
end

starting_year = ask("Please enter a starting year ")
ending_year = ask("Please enter an ending year ")

leap_array = Array.new

if starting_year > ending_year
	puts "Starting_year bigger than ending_year"
	return	
else	
	for year in starting_year..ending_year
		if year % 4 == 0 && year % 100 != 0 || year % 400 == 0
			leap_array << year
		end
	end
	
end

puts "There are #{leap_array.length} leap years between #{starting_year} and #{ending_year}."

for year in leap_array
	puts year.to_s + " " + "is a leap year"
end