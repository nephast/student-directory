@students = [] # an empty array accessible to all methods

def try_load_students
  filename = ARGV.first #first argument from command line
  if filename == nil
    filename = "students.csv"
    load_students filename
  elsif File.exists?(filename) #if it exists
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else  #if it doesn't exist
    puts "Sorry, #{filename} doesn't exist."
    exit #Quit program
  end
end

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #Getting input from user
  name = STDIN.gets.chomp
  #While the name is NOT empty, repeat this code
  while !name.empty? do
    puts "Please enter their cohort or leave it blank for default one"
    cohort = STDIN.gets.chomp
    if cohort == ""
      cohort = nil
    end
    #add the student hash to the array
    add_students name, cohort
    puts "Now we have #{@students.count} students"
    #get another name from the user
    name = STDIN.gets.chomp
  end
end

def load_students (filename = "students.csv")
  file = File.open(filename, "r")
  file.readlines.each do |line|
  name, cohort = line.chomp.split(',')
    add_students name, cohort
  end
  file.close
  puts "Students list loaded :)".center(80)
end

def add_students name, cohort
  if cohort == nil
  @students << {name: name, cohort: cohort ||= "november".to_sym}
else
    @students << {name: name, cohort: cohort.to_sym}
  end
end

def save_students
  #open file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
  puts "List saved to students.csv".center(80)
end

def interactive_menu
  loop do
    print_menu
    process(STDIN.gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list  from students.csv"
  puts "9. Exit" # 9 because we'll be adding more items
end

def show_students
  print_header
  print_students_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    puts "Please follow the instructions to enter students details".center(80)
    input_students
  when "2"
    puts "Printing students list...".center(80)
    show_students
  when "3"

    save_students
  when "4"
    load_students
  when "9"
    puts "Goodbye, we hope to see you soon!".center(80)
    exit # this will cause the program to terminate
  else
    puts "I don't know what you meant, try again".center(80)
  end
end

def print_header
  puts ""
  puts "The students of Villain Academy".center(80)
  puts "--------------".center(80)
end

def print_students_list
  @students.each_with_index do |student, index|
  puts "#{index+1}. #{student[:name]}, (#{student[:cohort]} cohort)".center(80)
  end
end

def print_footer
  puts ""
  puts "Overall, we have #{@students.count} great students".center(80)
  puts ""
end

try_load_students
interactive_menu
