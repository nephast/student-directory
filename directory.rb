# first we put all students into an array
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "the Joker",
  "Joffrey Baratheon",
  "Norman Bates"
]
puts "The students of Villain Academy"
puts "--------------"
students.each do |student|
  puts student 
end
# finally, we print the total of students
puts "Overall, we have #{students.count} great students"
