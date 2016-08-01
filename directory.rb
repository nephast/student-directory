# first we put all students into an array
students = [
  {name: "Dr. Hannibal Lecter", cohort: "november"},
  {name: "Darth Vader", cohort: "november"},
  {name: "Nurse Ratched", cohort: "november"},
  {name: "Michael Corleone", cohort: "november"},
  {name: "Alex Delarge", cohort: "november"},
  {name: "The wicked Witch of the West", cohort: "november"},
  {name: "Terminator", cohort: "november"},
  {name: "Freddy Krueger", cohort: "november"},
  {name: "the Joker", cohort: "november"},
  {name: "Joffrey Baratheon", cohort: "november"},
  {name: "Norman Bates", cohort: "november"}
]

def print_header
  puts "The students of Villain Academy"
  puts "--------------"
end

def print(names)
  names.each do |student|
    puts "#{student[:name]}, (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

print_header
print(students)
print_footer(students)
