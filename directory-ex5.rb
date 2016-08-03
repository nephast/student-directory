#Introduction
def input_students

  #Creating students array
  students = []

  #Getting input from user
  puts "Please enter the name of a student"
  name = gets.chomp
  puts "Please enter their favorite hobby"
  hobby = gets.chomp
  puts "Please enter their DOB (ddmmyy)"
  bday = gets.chomp
  puts "Do you want to add more students to the list?"
  puts "Type 'y' for yes or return to stop adding students"
  more = gets.chomp
  #add the student hash to the array
students << {name: name, cohort: :november, hobby: hobby, bday: bday}
  #While the name is NOT empty, repeat this code
  while more == "y" do
    #get more input from the user
    puts "Please enter a name"
    name = gets.chomp
    puts "Please enter their favorite hobby"
    hobby = gets.chomp
    puts "Please enter their DOB (ddmmyy)"
    bday = gets.chomp
      #add the student hash to the array
    students << {name: name, cohort: :november, hobby: hobby, bday: bday}
    puts "Now we have #{students.count} students"
    puts "Do you want to add more students to the list?"
    puts "Type 'y' for yes or return to stop adding students"
    more = gets.chomp
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
  puts "#{index+1}. #{student[:name]}, (#{student[:cohort]} cohort. Favorite hobby: #{student[:hobby]}, born #{student[:bday]})"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
students = input_students
print_header
print(students)
print_footer(students)
