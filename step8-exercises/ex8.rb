def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "Enter cohort:"
  cohort = gets.chomp
  while !name.empty? do
    students << {name: name, cohort: cohort}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    if name != ""
    puts "Enter cohort:"
    cohort = gets.chomp
end
end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  puts "What cohort would you like to see?"
  cohort_choice = gets.chomp
  students.map do |student|
    if student[:cohort] == cohort_choice
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
