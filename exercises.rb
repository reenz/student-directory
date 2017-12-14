#print them grouped by cohorts. 

def input_students
  students = []
  cohorts = ["january","february","march","april","may","june","july","august",
  "september","october","november","december"]

  while true do

    puts "Please enter the names of students"
    puts "To finish , just hit return twice"
    name = gets.chomp

    puts "Please enter the names of cohort"
    puts "To finish , just hit return twice"
    cohort = gets.chomp
    if (cohort.empty?)
      cohort = "default november"
    elsif (cohorts.include?(cohort) != true)
      puts "incorrect cohort"
      break
    end
    break if (name.empty?)
    students << {name: name , cohort: (cohort.to_sym)}
    if students.count == 1
      puts "Now we have 1 student"
    else
    puts "Now we have #{students.count} students"
  end
end
students
end

def print(names)
  i = 0
  while i < names.count do
    name = names[i]
    puts "#{name[:name]} , #{name[:cohort]} cohort"
    i += 1
  end
end

def print_by_cohort(names)
  cohort_hash = {}
  names.each do |name|
    cohort = name[:cohort]
    if cohort_hash[cohort] == nil
      cohort_hash[cohort] = []
    end
    cohort_hash[cohort].push(name[:name])
  end
  puts cohort_hash.flatten
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_footer(names)
  if names.count == 1
    puts "Overall, we have #{names.count} great student"
  else
  puts "Overall, we have #{names.count} great students"
end
end

students = input_students
print_header
print(students)
print_by_cohort(students)
print_footer(students)
