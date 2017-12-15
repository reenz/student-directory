#print students center alligned,use chop,take inputs like country,hobbies,height
def input_students
  students = []


  while true do
    puts "Please enter the names of students"
    puts "To finish , just hit return twice"
    name = gets.chop
    break if (name.empty?)

    puts "Enter cohort"
    cohort = gets.chop

    puts "Enter country of birth"
    country = gets.chop

    puts "Enter hobbies"
    hobbies = gets.chop

    puts "Enter height"
    height = gets.chop

    students << {name: name , cohort: cohort , country: country, hobbies: hobbies ,
    height: height}
    puts "Now we have #{students.count} students"

  end
  students
end

def print_header
puts "The students of Villains Academy".center(40)
puts "-------------".center(40)
end

def print(names)
  names.each do |student|
    puts "#{student[:name]}, #{student[:cohort]},#{student[:country]}, (#{student[:hobbies]}),#{student[:height]}".center(40)
  end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students".center(40)
end

students = input_students
print_header
print(students)
print_footer(students)
