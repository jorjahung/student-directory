# let's put all students into an array
students = [
"Jorja",
"Student 1",
"Student 2",
"Student 3"
]
# and the print them
puts "The students of my cohort at Makers Academy"
puts "-------------------------------------------"
# this is called iteration
students.each do |student|
	puts student
end
# finally, we print the total
puts "Overall, we have #{students.length} great students."