# let's put all students and their cohorts into an array
students = [
	{:name => "Jorja", :cohort => :january},
{:name => "Berta", :cohort => :january},
{:name => "Andrey", :cohort => :january},
{:name => "Peter", :cohort => :january},
{:name => "James", :cohort => :january},
{:name => "Megan", :cohort => :january},
{:name => "Rolando", :cohort => :january},
{:name => "Biwek", :cohort => :january},
{:name => "Colin", :cohort => :january},
{:name => "Kalle", :cohort => :january},
{:name => "Makis", :cohort => :january},
{:name => "Ayaz", :cohort => :january},
{:name => "Roy", :cohort => :january},
{:name => "Mihai", :cohort => :january},
{:name => "Nabin", :cohort => :january},
{:name => "Abraham", :cohort => :january},
]
# let's create methods
def print_header
	puts "The students of my cohort at Makers Academy"
	puts "-------------------------------------------"
end

def print(students)
# this is called iteration
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students."
end

# nothing happens until we call the methods
print_header
print(students)
print_footer(students)