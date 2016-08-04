students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :jan},
  {name: "Nurse Ratched", cohort: :oct},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :jan},
  {name: "The Wicked Witch of the West", cohort: :oct},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :jan},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :oct}
]


def print_header
  puts ""
  puts ""
  puts "The students of Villain Academy".center(100)
  puts "--------------".center(100)
end

def filter_cohort(array)
  temp = []
  array.map do |x|
    unless temp.include? x[:cohort]
      temp << x[:cohort]
    end
  end
  temp
end


def print_by_cohort(uniq, general)
  uniq.each do |cohort|
    general.map do |student|
      if cohort == student[:cohort]
        puts ("#{student[:name]}, #{student[:cohort]}").center(100)
      end
    end
  end
end



def print_footer(names)
  puts "Overall, we have #{names.count} great students".center(100)
end


print_header
print_by_cohort(filter_cohort(students), students)
puts ""
print_footer(students)
