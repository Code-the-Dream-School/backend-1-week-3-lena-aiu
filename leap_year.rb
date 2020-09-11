#(4) Write a program, leap_year.rb. It will ask the user for a starting year and an ending year, and it 
#will then print out all the leap years between them, including the starting or ending year if those are 
#leap years. The rules for leap years are: A leap year is divisible by 4, except for years that are divisible 
#by 100 -- those aren't leap years -- except for years that are divisible by 400, which ARE leap years.

def ask(question)
  print question + " "
  gets.chomp
end

starting_year = ask("Please enter a starting year ")
ending_year = ask("Please enter an ending year ")

leap_array = Array.new

first_year = starting_year.to_i
second_year = ending_year.to_i

leap_array.unshift(first_year)
leap_array.push(second_year)

#help me how to print out all the leap years between a starting year and an ending year

for x in first_year..second_year
	if x+1 < second_year then
		check_year = first_year + 1
		leap_array << check_year
	next
	end
	puts leap_array.inspect
end

#next_year = 0

#while second_year < first_year && next_year != second_year
#		leap_array << next_year + 4 
		#leap_array << (first_year + 1) 
#end


puts leap_array.inspect

leap_array.each do |year|
  if year % 400 == 0
  	 puts year.to_s + ' is leap year'
    elsif year % 4==0 && year % 100 != 0 
      puts year.to_s + ' is leap year'
  else  puts year.to_s + ' is not leap year'
  end
end