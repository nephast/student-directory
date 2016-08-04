def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts ""
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end
def input_students
  puts ""
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

def print_header
  puts ""
  puts "The students of Villain Academy"
  puts "--------------"
end

def print(names)
  names.each_with_index do |student, index|
  puts "#{index+1}. #{student[:name]}, (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts ""
  puts "Overall, we have #{names.count} great students"
end

interactive_menu
