# let's put all students into an array
students = [
"Jorja",
"Student 1",
"Student 2",
"Student 3"
]
# let's create methods
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print(names)
# this is called iteration
	names.each do |name|
		puts name
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)