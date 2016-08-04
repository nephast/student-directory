#Introduction
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"


  #Creating students array
  students = []

  #Getting input from user
  name = gets.sub(/[\n]/,"")

  #While the name is NOT empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    if students.count > 1
      puts "Now we have #{students.count} students"
    else
      puts "We have now our first student!"
    end
    #get another name from the user
    name = gets.sub(/[\n]/,"")
  end
  #Return the array of students
  students
end

def print_header
  puts "The students of Villain Academy"
  puts "--------------"
end

def print(names)
  names.each_with_index do |student, index|
  puts "#{index+1}. #{student[:name]}, (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  if names.count > 1
    puts "Overall, we have #{names.count} great students"
  else
    puts "We have 1 great student"
  end
end
students = input_students
print_header
print(students)
print_footer(students)
