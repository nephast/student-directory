#Introduction
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"


  #Creating students array
  students = []

  #Getting input from user
  name = gets.chomp

  #While the name is NOT empty, repeat this code
  while !name.empty? do
    #add the student hash to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #Return the array of students
  students
end

def filter
  puts "Enter the first letter of the name(s) you want to print"
  $first_letter = gets.chomp
end

def print_header
  puts "The students of Villain Academy"
  puts "--------------"
end

def print(names)
  $how_many
  names.each_with_index do |student, index|
    if student[:name].start_with?($first_letter)
  puts "#{index+1}. #{student[:name]}, (#{student[:cohort]} cohort)"
  $how_many =+ 1
    end
  end
end

def print_footer(names)
  puts "we have #{$how_many} students who's name start with a #{$first_letter}"
end

students = input_students
filter
print_header
print(students)
print_footer(students)
