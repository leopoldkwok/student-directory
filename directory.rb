def print_header
  puts "The students of my cohort at Makers Academy"
  puts "-------------"
end

def print_footer(names)    
  puts "Overall, we have #{names.length} great students".center(50)
end

def input_students
  puts "Please enter the names of the students and their cohort month"
  puts "To finish, just hit return twice"
  # create an empty array
  students = []
  # get the first name
  answer = gets.chomp.split(" ")
  name = answer[0]
  month = answer[1]
  if month == nil
    month =  "missing"
  end
  # while the name is not empty, repeat this code
  while !answer.empty? do    
    # add the student hash to the array
    students << {:name => name, :cohort => month.to_sym}
    # puts students.inspect
    puts "Now we have #{students.length} students"
    # get another name from the user
    answer = gets.chomp.split(" ")
    name = answer[0]
    month = answer[1]
  end
  # return the array of students
  students
end

def print(students)
  students.each do |student|
  puts "#{student[:name]}(#{student[:cohort]} cohort)".center(50)
  end
end

students = input_students
print_header
print(students)
print_footer(students)