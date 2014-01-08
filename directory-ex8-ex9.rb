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

	# return the array of students
	students.sort {|x,y| x[:cohort] <=> y[:cohort]} 
end


def print_footer(names)
	if names.length == 1
		puts "Overall, we have #{names.length} great student.".center(100)
	else
		puts "Overall, we have #{names.length} great students.".center(100)
	end
end

# def print_options
# 	puts "Do you want to 1.) Print all students? or 2.) Print by cohorts? Please choose '1' or '2'"
# 	@option = gets.to_i
# end

def print_cohorts(students)
	puts "Which cohort would you like to see? Please select the month in numerical format."
	cohort_option = gets.to_i
		case cohort_option
			when 1
				cohort_option = :January
			when 2
				cohort_option = :February
			when 3
				cohort_option = :March
			when 4
				cohort_option = :April
			when 5
				cohort_option = :May
			when 6
				cohort_option = :June
			when 7
				cohort_option = :July
			when 8
				cohort_option = :August
			when 9
				cohort_option = :September
			when 10
				cohort_option = :October
			when 11
				cohort_option = :November
			when 12
				cohort_option = :December
			else
				puts "Error, please input date in numerical format:"
				cohort = Integer(gets.chomp)
		end
# THIS!
	puts "The students of the #{cohort_option} cohort are:"
		students.select{|student| student[:cohort] == cohort_option}.each_with_index do |student,i|
		puts "#{i+1}. #{student[:name]} -- (#{student[:cohort]} cohort)".center(100)
		end
end

students = input_students
puts "Do you want to 1.) Print all students? or 2.) Print by cohorts? Please choose '1' or '2'"
option = gets.to_i
	if option == 1
		print_header(students)
		print(students)
		print_footer(students)
	elsif option == 2
		print_cohorts(students)
	else
		puts "Invalid choice. Please choose between 1 or 2."
		option.gets.to_i
	end