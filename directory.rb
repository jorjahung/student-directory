# # let's put all students and their cohorts into an array
# students = [
# 	{:name => "Jorja", :cohort => :january},
# 	{:name => "Berta", :cohort => :january},
# 	{:name => "Andrey", :cohort => :january},
# 	{:name => "Peter", :cohort => :january},
# 	{:name => "James", :cohort => :january},
# 	{:name => "Megan", :cohort => :january},
# 	{:name => "Rolando", :cohort => :january},
# 	{:name => "Biwek", :cohort => :january},
# 	{:name => "Colin", :cohort => :january},
# 	{:name => "Kalle", :cohort => :january},
# 	{:name => "Makis", :cohort => :january},
# 	{:name => "Ayaz", :cohort => :january},
# 	{:name => "Roy", :cohort => :january},
# 	{:name => "Mihai", :cohort => :january},
# 	{:name => "Nabin", :cohort => :january},
# 	{:name => "Abraham", :cohort => :january},
# ]


# let's create methods

def print_header(names)
	if names.length == 1
		puts "The only student of my cohort at Makers Academy"
		puts "-----------------------------------------------"
	else 
		puts "The students of my cohort at Makers Academy"
		puts "-------------------------------------------"
	end
end

def print(students)
# this is called iteration
	students.each_with_index do |student,i|
		puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	if names.length == 1
		puts "Overall, we have #{names.length} great student."
	else
		puts "Overall, we have #{names.length} great student."
	end
end

def input_students
	puts "Please enter the names of the students."
	puts "To finish, just hit return twice."
	# create an empty array
	students = []
	#get the first name
	name = gets.chomp
	name.capitalize!
	# while the name is not empty, repeat this code
	while !name.empty? do
		#add the student hash to the array
		students << {:name => name, :cohort => :january}
		puts "Now we have #{students.length} students."
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