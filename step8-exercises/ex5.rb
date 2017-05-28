def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  students = []
  name = gets.chomp
  puts "What is his/her the eye colour?"
  eyes = gets.chomp
  puts "Home city?"
  city = gets.chomp
  while !name.empty? do
    students << {name: name, eyes: eyes, city: city, cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
    if name != ""
    puts "What is his/her the eye colour??"
  eyes = gets.chomp
  puts "Home city?"
  city = gets.chomp
  else 
    students
end
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}, with #{student[:eyes]} eyes, from #{student[:city]}, (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
