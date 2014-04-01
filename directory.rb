def print_header(names)
	if names.length == 1
		puts "The only student of my cohort at Makers Academy".center(100)
		puts "-----------------------------------------------".center(100)
	else 
		puts "The students of my cohort at Makers Academy".center(100)
		puts "-------------------------------------------".center(100)
	end
end

def print(students)
	students.each_with_index do |student,i|
		puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)".center(100)
	end

# Exercise #5 (?) answer:
# 	student_count = students.count
# while students.count > 0
# 	puts "#{student_count-students.count+1}. #{students.first[:name]} (#{students.first[:cohort]} cohort)".center(100)
# 	students.shift
# end

end

def print_footer(names)
	if names.length == 1
		puts "Overall, we have #{names.length} great student.".center(100)
	else
		puts "Overall, we have #{names.length} great students.".center(100)
	end
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	students = []
	name = gets.chomp
	name.capitalize!

	# while the name is not empty, repeat this code
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :cohort => :January}
		if students.length == 1
			puts "Now we have #{students.length} student."
		else
			puts "Now we have #{students.length} students."
		end
		#get another name from the user
		name = gets.chomp
		name.capitalize!
	end
	# return the array of students
	students.sort {|x,y| x[:name] <=> y[:name] } 
end
# end of methods we created

# nothing happens until we call the methods

students = input_students
print_header(students)
print(students)
print_footer(students)