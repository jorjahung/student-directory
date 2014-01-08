# Exercise #8 and 9

def print_header(names)
	if names.length == 1
		puts "The only student of Makers Academy".center(100)
		puts "----------------------------------".center(100)
	else
		puts "The students of Makers Academy".center(100)
		puts "------------------------------".center(100)
	end
	
end


def print(students)
# this is called iteration
	students.each_with_index do |student,i|
		puts "#{i+1}. #{student[:name]} -- (#{student[:cohort]} cohort)".center(100)
	end
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	students = []
	
	#get the first name
	name = nil

	while name.nil? || !name.empty? do

		puts "First name:"
		name = gets.chomp
		name.capitalize!

		if !name.empty? 

			puts "Cohort (in numerical format):"
			cohort = gets.to_i

			case cohort
			when 1
				cohort = :January
			when 2
				cohort = :February
			when 3
				cohort = :March
			when 4
				cohort = :April
			when 5
				cohort = :May
			when 6
				cohort = :June
			when 7
				cohort = :July
			when 8
				cohort = :August
			when 9
				cohort = :September
			when 10
				cohort = :October
			when 11
				cohort = :November
			when 12
				cohort = :December
			else
				puts "Error, please input date in numerical format:"
				cohort = Integer(gets.chomp)
			end

			students << {:name => name, :cohort => cohort}

		end



	end
	
	# ask for the name again

	# return the array of students
	students.sort {|x,y| x[:cohort] <=> y[:cohort]} 
end


def print_footer(names)
	if names.length == 1
		puts "Overall, we have #{names.length} great student.".center(100)
	else
		puts "Overall, we have #{names.length} great student.".center(100)
	end
end


students = input_students
print_header(students)
print(students)
print_footer(students)