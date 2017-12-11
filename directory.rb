
students = [
  {name: "Dr. Hannibal Lecter",cohort: :novmember},
  {name: "Darth Vader",cohort: :novmember},
  {name: "Nurse Ratched",cohort: :novmember},
  {name: "Michael Corleone",cohort: :novmember},
  {name: "Alex DeLarge",cohort: :novmember},
  {name: "The Wicked Witch of the West",cohort: :novmember},
  {name: "Terminator",cohort: :novmember},
  {name: "Freddy Krueger",cohort: :novmember},
  {name: "The Joker",cohort: :novmember},
  {name: "Joffrey Baratheon",cohort: :novmember},
  {name: "Norman Bates",cohort: :novmember}
]

def print_header
puts "The students of Villains Academy"
puts "-------------"
end

def print(names)
names.each do |name|
  puts "#{name[:name]} (#{name[:cohort]} cohort)"
end
end

def print_footer(names)
puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
