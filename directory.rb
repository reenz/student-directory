@students = []
require "csv"

def input_students
  puts "Please enter the names of students"
  puts "To finish , just hit return twice"
  name = STDIN.gets.chomp

  while !name.empty? do
    add_student(name)
    puts "Now we have #{@students.count} students"
    name = STDIN.gets.chomp
  end
end

def add_student(name)
    @students << {name: name, cohort: :november}
end


def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list"
  puts "4. Load the list"
  puts "9. Exit"
end

def show_students
  print_header
  print_students_list
  print_footer
end

def save_students
  CSV.open("students.csv" , "w") do |file|
  @students.each do |student|
    file << [student[:name], student[:cohort]]
    end
  end
end

def load_students(filename = "students.csv")
  CSV.foreach(filename,"r") do |line|
    name ,cohort = line.join(',')
    add_student(name)
  end
end

def try_load_students
  filename = ARGV.first
   return if filename.nil?
   if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} students from #{filename}"
  else
    puts "Sorry, #{filename} doesn't exist"
    exit
  end
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "4"
    load_students
  when "9"
    exit
  else
    puts "I dont't know what you meant, try again"
  end
end


def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_students_list
  @students.each do |name|
    puts "#{name[:name]} , #{name[:cohort]} cohort"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

try_load_students
interactive_menu
