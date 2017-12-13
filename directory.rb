
def input_students
  puts "Please enter the names of students"
  puts "To finish , just hit return twice"
  students = []
  name = gets.chomp

  while !name.empty? do
    students << {name: name , cohort: :november}
    puts "Now we have #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(names)
  puts "enter the letter to print the students with that specific letter"
  input = gets.chomp
  names.each do |name|
    if name[:name].chr == input
      puts name[:name]
    end
  end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

students = input_students
print_header
print(students)
print_footer(students)
