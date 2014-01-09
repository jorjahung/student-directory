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
	# puts "#{students[:cohort]}"
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

		months = [:January,:February,:March,:April,:May,:June,:July,:August,:September,:October,:November,:December]
		cohort = nil
		if !name.empty? 
			loop do
				puts "Cohort (in numerical format):"
				cohort = gets.to_i
				unless (1..12).include?(cohort)
					puts "Please try again"
					redo
				end
				cohort = months[cohort-1]
				break
			end
			
			# puts the input into the array
			students << {:name => name, :cohort => cohort}
		end
	end

	
	months = [:January,:February,:March,:April,:May,:June,:July,:August,:September,:October,:November,:December]
	
	# sorts the array of students
	students.sort {|x,y| months.index(x[:cohort]) <=> months.index(y[:cohort])} 
	#students.sort {||}

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
	# puts "Which cohort would you like to see? Please select the month in numerical format."
	# cohort_option = gets.to_i

	months = [:January,:February,:March,:April,:May,:June,:July,:August,:September,:October,:November,:December]
	cohort = nil
			loop do
				puts "Which cohort would you like to see? Please select the month in numerical format."
				cohort = gets.to_i
				unless (1..12).include?(cohort)
					puts "Please try again"
					redo
				end
				cohort = months[cohort-1]
				break
			end	
			
# THIS!
	if students.count == 1
		puts "The only student of the #{cohort} cohort is:".center(100)
		students.select{|student| student[:cohort] == cohort}.each_with_index do |student,i|
		puts "#{i+1}. #{student[:name]} -- (#{student[:cohort]} cohort)".center(100)
		end
	elsif students.count > 1	
		puts "The students of the #{cohort} cohort are:".center(100)
		students.select{|student| student[:cohort] == cohort}.each_with_index do |student,i|
		puts "#{i+1}. #{student[:name]} -- (#{student[:cohort]} cohort)".center(100)
		end
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