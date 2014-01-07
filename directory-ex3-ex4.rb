# # let's put all students and their cohorts into an array
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


puts "Please enter a letter:"
	letter = gets.chomp
	letter.upcase

puts " "

puts "Student(s) whose name starts with #{letter}:"
students.each do |student|
	if student[:name].slice(0,1) == letter
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end	
end

puts " "

puts "Please enter a number:"
	number = gets.chomp.to_i

puts " "

puts "Student(s) whose name is less than #{number} characters:"
students.each do |student|
	if student[:name].length <= number
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end	
end

## This was your previous code, Jorja:
# if students[:name].slice(0,1) == letter
# 	puts "Student(s) whose name starts with #{letter}:"
# 	puts students.each_with_index do |student,i|
# 		puts "#{i+1}. #{student[:name]} (#{student[:cohort]} cohort)"
# 	end
# end